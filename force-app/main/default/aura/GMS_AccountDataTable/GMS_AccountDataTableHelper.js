({
    fetchData: function (cmp,event,helper) {
        var action = cmp.get("c.getAllAccounts");
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                var data = response.getReturnValue();
                cmp.set('v.data',data);
            }
            // error handling when state is "INCOMPLETE" or "ERROR"
        });
        $A.enqueueAction(action);
    },

    showSuccessToast : function (cmp, event, helper) {
        var toastEvent = $A.get("e.force:showToast");

        toastEvent.setParams({
            title: 'Success Message',
            message: 'The changes were saved',
            type : 'success',
            mode: 'pester'
        });

        toastEvent.fire();
    },

    showErrorToast : function (cmp, event, helper) {
        var toastEvent = $A.get("e.force:showToast");

        toastEvent.setParams({
            title: 'Error Message',
            message: 'The changes were failed to saved',
            type : 'error',
            mode: 'pester'
        });

        toastEvent.fire();
    },

    reloadView : function (cmp, event, helper) {
        var refreshEvent = $A.get("e.force:refreshView");
        var init = cmp.get("c.doInit");
        if (refreshEvent){
            refreshEvent.fire();
            $A.enqueueAction(init);
        }
    }
})