trigger AccountTrigger on Account (before insert, before update) {
    
    AccountTriggerHandler.setDefaultRegion(trigger.new);

}