/**
 *
 */
package com.dotmarketing.quartz.job;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import com.dotcms.business.CloseDBIfOpened;
import com.dotcms.cluster.common.ClusterServerActionThread;
import com.dotcms.enterprise.LicenseUtil;
import com.dotcms.enterprise.cluster.ClusterFactory;
import com.dotmarketing.exception.DotDataException;
import com.dotmarketing.util.Logger;

/**
 * This job will register the current date (db date) into db every configured period of time.
 * The idea here is to act as a heart beat of the server for clustering purposes
 *
 */
public class ServerHeartbeatJob implements Job {


	
	
	
	@CloseDBIfOpened
	public void execute(JobExecutionContext ctx) throws JobExecutionException {

		try{
			LicenseUtil.updateLicenseHeartbeat();

			ClusterFactory.rewireClusterIfNeeded();
			ClusterServerActionThread.createThread();
			
			
		} catch (DotDataException e) {
			Logger.error(getClass(), "Could not get ServerUptime", e);
		}

	}

}
