.class Lcom/mediatek/wfo/impl/WfcHandler$3;
.super Landroid/content/BroadcastReceiver;
.source "WfcHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WfcHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WfcHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WfcHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 854
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 857
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x7d3

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 860
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "wifi_scan_available"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 861
    const/4 v0, 0x4

    const-string v2, "scan_enabled"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 863
    .local v0, "state":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive WIFI_SCAN_AVAILABLE, state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WfcHandler"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessage(Landroid/os/Message;)Z

    .line 865
    .end local v0    # "state":I
    goto/16 :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 867
    const/4 v0, -0x1

    const-string v1, "phone"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 869
    .local v0, "phoneId":I
    invoke-static {p1, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 870
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v2

    if-nez v2, :cond_2

    .line 871
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWfcEnabledByPlatform("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") is false, clearPDNErrorMessages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 873
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    iget-object v2, v2, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    invoke-interface {v2}, Lcom/mediatek/wfo/op/IWosExt;->clearPDNErrorMessages()V

    .line 876
    :cond_2
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v2}, Lcom/mediatek/wfo/impl/WfcHandler;->access$800(Lcom/mediatek/wfo/impl/WfcHandler;)V

    .line 877
    .end local v0    # "phoneId":I
    .end local v1    # "mgr":Lcom/android/ims/ImsManager;
    goto/16 :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mediatek.common.carrierexpress.operator_config_changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 880
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->access$900(Lcom/mediatek/wfo/impl/WfcHandler;)V

    goto/16 :goto_1

    .line 882
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 883
    nop

    .line 884
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 885
    .local v0, "parcelableExtra":Landroid/os/Parcelable;
    if-eqz v0, :cond_6

    .line 886
    move-object v2, v0

    check-cast v2, Landroid/net/NetworkInfo;

    .line 887
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 888
    .local v3, "state":Landroid/net/NetworkInfo$State;
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v5, :cond_5

    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    move v5, v1

    :goto_0
    invoke-static {v4, v5}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1002(Lcom/mediatek/wfo/impl/WfcHandler;Z)Z

    .line 890
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v4, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1100(Lcom/mediatek/wfo/impl/WfcHandler;Z)V

    .line 892
    .end local v0    # "parcelableExtra":Landroid/os/Parcelable;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    :cond_6
    goto/16 :goto_1

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 893
    const-string v0, "simPropKey"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, "imsEnabledKey":Ljava/lang/String;
    const-string v2, "wfc_ims_enabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 895
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    const-string v3, "ACTION_SUBINFO_RECORD_UPDATED: WFC_IMS_ENABLED changes"

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 896
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v2}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1200(Lcom/mediatek/wfo/impl/WfcHandler;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 897
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessage(Landroid/os/Message;)Z

    .line 899
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v2, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1100(Lcom/mediatek/wfo/impl/WfcHandler;Z)V

    .line 902
    .end local v0    # "imsEnabledKey":Ljava/lang/String;
    :cond_8
    goto/16 :goto_1

    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.mediatek.intent.action.WFC_STATUS_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 903
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->access$300(Lcom/mediatek/wfo/impl/WfcHandler;)Lcom/mediatek/wfo/impl/WifiPdnHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiPdnExisted()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->access$400(Lcom/mediatek/wfo/impl/WfcHandler;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 904
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->access$402(Lcom/mediatek/wfo/impl/WfcHandler;Z)Z

    .line 905
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    const/16 v1, 0x89a

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 908
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 909
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    sget-object v1, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->SCREEN_OFF:Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1302(Lcom/mediatek/wfo/impl/WfcHandler;I)I

    .line 910
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1300(Lcom/mediatek/wfo/impl/WfcHandler;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1400(Lcom/mediatek/wfo/impl/WfcHandler;I)V

    goto :goto_1

    .line 911
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 912
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    sget-object v1, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->SCREEN_ON:Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1302(Lcom/mediatek/wfo/impl/WfcHandler;I)I

    .line 913
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1300(Lcom/mediatek/wfo/impl/WfcHandler;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1400(Lcom/mediatek/wfo/impl/WfcHandler;I)V

    goto :goto_1

    .line 914
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 915
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    sget-object v1, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->USER_PRESENT:Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1302(Lcom/mediatek/wfo/impl/WfcHandler;I)I

    .line 916
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1300(Lcom/mediatek/wfo/impl/WfcHandler;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1400(Lcom/mediatek/wfo/impl/WfcHandler;I)V

    .line 918
    :cond_d
    :goto_1
    return-void
.end method
