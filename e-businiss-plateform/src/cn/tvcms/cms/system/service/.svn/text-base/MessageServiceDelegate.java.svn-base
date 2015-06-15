package cn.tvcms.cms.system.service;


@javax.jws.WebService(targetNamespace = "http://service.system.cms.tvcms.cn/", serviceName = "MessageServiceService", portName = "MessageServicePort", wsdlLocation = "WEB-INF/wsdl/MessageServiceService.wsdl")
public class MessageServiceDelegate {

	cn.tvcms.cms.system.service.MessageService messageService = new cn.tvcms.cms.system.service.MessageService();

	public boolean saveMsg(String content, String title) {
		return messageService.saveMsg(content, title);
	}

	public boolean saveAuth(String domainName, String code, String endTime,
			String startTime, String type, String status) {
		return messageService.saveAuth(domainName, code, endTime, startTime,
				type, status);
	}

}