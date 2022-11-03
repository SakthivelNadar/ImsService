.class Lcom/mediatek/ims/ImsService$MyHandler;
.super Landroid/os/Handler;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field mSocketId:I

.field final synthetic this$0:Lcom/mediatek/ims/ImsService;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ImsService;I)V
    .locals 1
    .param p2, "socketId"    # I

    .line 2055
    iput-object p1, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2056
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    .line 2057
    iput p2, p0, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    .line 2058
    return-void
.end method

.method private isRttSupported()Z
    .locals 4

    .line 2704
    const-string v0, "persist.vendor.mtk_rtt_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2705
    .local v0, "isSupport":Z
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRttSupport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2706
    return v0
.end method

.method private setRttModeForIncomingCall(Lcom/mediatek/ims/ril/ImsCommandsInterface;)V
    .locals 3
    .param p1, "imsRILAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 2691
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService$MyHandler;->isRttSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2692
    return-void

    .line 2694
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v1, "setRttModeForIncomingCall: mode = 2"

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2695
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$2000(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 2696
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$2000(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setRttMode(ILandroid/os/Message;)V

    .line 2698
    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .param p1, "msg"    # Landroid/os/Message;

    .line 2065
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    const/4 v4, 0x5

    const/16 v5, 0xe

    const/16 v6, 0x10

    const/4 v7, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1e

    .line 2607
    :pswitch_1
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2608
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    .line 2609
    .local v5, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2610
    .local v6, "reg_state":I
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 2611
    .local v13, "ext_info":I
    const/4 v14, -0x1

    .line 2612
    .local v14, "rat":I
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v12, :cond_0

    .line 2613
    const/4 v4, 0x0

    .line 2614
    .end local v14    # "rat":I
    .local v4, "rat":I
    iget-object v14, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v14}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v14

    iget v15, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v12, v14, v15

    goto :goto_0

    .line 2616
    .end local v4    # "rat":I
    .restart local v14    # "rat":I
    :cond_0
    const/4 v4, 0x1

    .line 2617
    .end local v14    # "rat":I
    .restart local v4    # "rat":I
    iget-object v14, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v14}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v14

    iget v15, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v10, v14, v15

    .line 2620
    :goto_0
    iget-object v14, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage() : newReg:"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2621
    if-nez v6, :cond_1

    move v8, v12

    goto :goto_1

    .line 2622
    :cond_1
    move v8, v11

    :goto_1
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " oldReg:"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2623
    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$1000(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v8

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v8, v8, v12

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2620
    invoke-static {v14, v8}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2625
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$1000(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v8

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    if-nez v6, :cond_2

    .line 2626
    const/16 v17, 0x1

    goto :goto_2

    :cond_2
    move/from16 v17, v11

    :goto_2
    aput v17, v8, v12

    .line 2627
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    if-nez v6, :cond_3

    .line 2628
    const/4 v10, 0x3

    goto :goto_3

    .line 2629
    :cond_3
    nop

    :goto_3
    nop

    .line 2627
    invoke-static {v8, v12, v10, v4, v9}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;IIILandroid/telephony/ims/ImsReasonInfo;)V

    .line 2631
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$4500(Lcom/mediatek/ims/ImsService;)Ljava/util/ArrayList;

    move-result-object v8

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashSet;

    .line 2633
    .local v8, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->access$1000(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v12

    if-nez v10, :cond_5

    .line 2634
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$1000(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v14, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v14

    invoke-static {v3, v12, v10, v4, v9}, Lcom/mediatek/ims/ImsService;->access$5600(Lcom/mediatek/ims/ImsService;IIILandroid/telephony/ims/ImsReasonInfo;)V

    .line 2636
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$3100(Lcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ext/IImsServiceExt;

    move-result-object v3

    .line 2637
    .local v3, "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    if-eqz v3, :cond_4

    .line 2638
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2639
    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v9

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v9, v9, v10

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v10, v10, v12

    iget-object v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2640
    invoke-static {v12}, Lcom/mediatek/ims/ImsService;->access$2000(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v12

    iget v14, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v12, v12, v14

    .line 2638
    invoke-interface {v3, v9, v10, v12}, Lcom/mediatek/ims/ext/IImsServiceExt;->notifyRegistrationStateChange(ILandroid/os/Handler;Ljava/lang/Object;)V

    .line 2642
    :cond_4
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->access$3200(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v9

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v11, v9, v10

    .line 2643
    .end local v3    # "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    goto :goto_4

    .line 2644
    :cond_5
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9, v12}, Lcom/mediatek/ims/ImsService;->access$5700(Lcom/mediatek/ims/ImsService;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v9

    .line 2646
    .local v9, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->access$1000(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v14

    iget v15, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v14, v14, v15

    invoke-static {v10, v12, v14, v3, v9}, Lcom/mediatek/ims/ImsService;->access$5600(Lcom/mediatek/ims/ImsService;IIILandroid/telephony/ims/ImsReasonInfo;)V

    .line 2651
    .end local v9    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :goto_4
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage() : newRegExt:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "oldRegExt:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2652
    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->access$1500(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2651
    invoke-static {v3, v9}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2654
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$1000(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v3, v3, v9

    if-nez v3, :cond_6

    .line 2655
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$1500(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v13, v3, v9

    goto :goto_5

    .line 2657
    :cond_6
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$1500(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v11, v3, v9

    .line 2660
    :goto_5
    const/4 v3, 0x6

    new-array v9, v3, [I

    .line 2661
    .local v9, "enabledFeatures":[I
    new-array v3, v3, [I

    .line 2662
    .local v3, "disabledFeatures":[I
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v10, v11, v13, v9, v3}, Lcom/mediatek/ims/ImsService;->access$5800(Lcom/mediatek/ims/ImsService;II[I[I)V

    .line 2665
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v10, v11, v9, v3}, Lcom/mediatek/ims/ImsService;->access$5900(Lcom/mediatek/ims/ImsService;I[I[I)V

    .line 2668
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2669
    invoke-static {v10, v9}, Lcom/mediatek/ims/ImsService;->access$6000(Lcom/mediatek/ims/ImsService;[I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v10

    .line 2670
    .local v10, "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    and-int/lit8 v11, v13, 0x4

    if-ne v11, v7, :cond_7

    .line 2671
    const/16 v7, 0x8

    invoke-virtual {v10, v7}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 2675
    :cond_7
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v7, v11, v10}, Lcom/mediatek/ims/ImsService;->access$6100(Lcom/mediatek/ims/ImsService;ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    .line 2677
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v7, v11, v9, v3}, Lcom/mediatek/ims/ImsService;->access$6200(Lcom/mediatek/ims/ImsService;I[I[I)V

    .line 2678
    goto/16 :goto_1e

    .line 2584
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "disabledFeatures":[I
    .end local v4    # "rat":I
    .end local v5    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "reg_state":I
    .end local v8    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    .end local v9    # "enabledFeatures":[I
    .end local v10    # "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .end local v13    # "ext_info":I
    :pswitch_2
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2585
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/ims/ImsRegInfo;

    .line 2586
    .local v3, "info":Lcom/mediatek/ims/ImsRegInfo;
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$5300(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ImsRegInfo;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-object v3, v4, v5

    .line 2587
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4, v3, v9, v5}, Lcom/mediatek/ims/ImsService;->access$5400(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsRegInfo;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;I)V

    .line 2588
    goto/16 :goto_1e

    .line 2225
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "info":Lcom/mediatek/ims/ImsRegInfo;
    :pswitch_3
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2226
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 2227
    .local v3, "incomingCallInfo":[Ljava/lang/String;
    aget-object v4, v3, v11

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2228
    .local v4, "type":I
    const/16 v5, 0x64

    if-ne v4, v5, :cond_35

    .line 2229
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5, v6, v3}, Lcom/mediatek/ims/ImsService;->access$3000(Lcom/mediatek/ims/ImsService;I[Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 2573
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "incomingCallInfo":[Ljava/lang/String;
    .end local v4    # "type":I
    :pswitch_4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2574
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v11

    .line 2575
    .local v3, "vops":I
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive EVENT_VOPS_STATUS_IND, vops = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2577
    goto/16 :goto_1e

    .line 2580
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "vops":I
    :pswitch_5
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$2000(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v0, v0, v3

    invoke-interface {v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->notifyImsServiceReady()V

    .line 2581
    goto/16 :goto_1e

    .line 2559
    :pswitch_6
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v0, v3, v4}, Lcom/mediatek/ims/ImsService;->access$5200(Lcom/mediatek/ims/ImsService;Landroid/os/AsyncResult;I)Z

    move-result v0

    if-nez v0, :cond_35

    .line 2560
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v0, v3, v11, v10}, Lcom/mediatek/ims/ImsService;->acknowledgeLastIncomingCdmaSms(IZI)V

    goto/16 :goto_1e

    .line 2546
    :pswitch_7
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2547
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_35

    .line 2548
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 2549
    .local v3, "pdu":[B
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_IMS_SMS_NEW_SMS, mSocketId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2550
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$5100()Ljava/util/HashMap;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 2551
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$5100()Ljava/util/HashMap;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    const-string v5, "3gpp"

    invoke-interface {v4, v3, v5}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->newImsSmsInd([BLjava/lang/String;)V

    .line 2554
    .end local v3    # "pdu":[B
    :cond_8
    goto/16 :goto_1e

    .line 2534
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2535
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_35

    .line 2536
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 2537
    .restart local v3    # "pdu":[B
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_IMS_SMS_STATUS_REPORT, mSocketId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2538
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$5100()Ljava/util/HashMap;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 2539
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$5100()Ljava/util/HashMap;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    const-string v5, "3gpp"

    invoke-interface {v4, v3, v5}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->newStatusReportInd([BLjava/lang/String;)V

    .line 2542
    .end local v3    # "pdu":[B
    :cond_9
    goto/16 :goto_1e

    .line 2567
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive EVENT_UT_CAPABILITY_CHANGE, phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2568
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$1500(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v2, Landroid/os/Message;->arg1:I

    aget v4, v4, v5

    invoke-static {v0, v3, v4, v11}, Lcom/mediatek/ims/ImsService;->access$1700(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 2569
    goto/16 :goto_1e

    .line 2492
    :pswitch_a
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 2493
    .local v0, "phone_id":I
    iget v3, v2, Landroid/os/Message;->arg2:I

    .line 2495
    .local v3, "token":I
    const/4 v4, 0x0

    .line 2496
    .local v4, "messageRef":I
    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2498
    .local v5, "ar":Landroid/os/AsyncResult;
    iget-object v6, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_a

    .line 2499
    iget-object v6, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/mediatek/ims/MtkSmsResponse;

    iget v4, v6, Lcom/mediatek/ims/MtkSmsResponse;->mMessageRef:I

    goto :goto_6

    .line 2501
    :cond_a
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v7, "handleMessage() : MtkSmsResponse was null"

    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2504
    :goto_6
    iget-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_b

    .line 2505
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage() : SMS send complete, messageRef: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2506
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$5100()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 2507
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$5100()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    const/4 v7, 0x1

    invoke-interface {v6, v3, v4, v7, v11}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->sendSmsRsp(IIII)V

    goto :goto_8

    .line 2512
    :cond_b
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v7, "handleMessage() : SMS send failed"

    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2513
    const/4 v6, 0x2

    .line 2514
    .local v6, "status":I
    const/4 v7, 0x1

    .line 2515
    .local v7, "reason":I
    iget-object v8, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_c

    .line 2521
    const/4 v6, 0x4

    goto :goto_7

    .line 2522
    :cond_c
    iget-object v8, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_d

    .line 2524
    const/4 v7, 0x6

    .line 2526
    :cond_d
    :goto_7
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$5100()Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 2527
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$5100()Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    invoke-interface {v8, v3, v4, v6, v7}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->sendSmsRsp(IIII)V

    .line 2532
    .end local v0    # "phone_id":I
    .end local v3    # "token":I
    .end local v4    # "messageRef":I
    .end local v6    # "status":I
    .end local v7    # "reason":I
    :cond_e
    :goto_8
    goto/16 :goto_1e

    .line 2447
    .end local v5    # "ar":Landroid/os/AsyncResult;
    :pswitch_b
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v3, "handleMessage() : Start init call session proxy"

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2449
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 2450
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "callId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2451
    .local v3, "callId":Ljava/lang/String;
    const-string v4, "phoneId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2452
    .local v4, "phoneId":I
    const-string v5, "seqNum"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2454
    .local v5, "seqNum":I
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$4800(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v6

    new-instance v7, Lcom/mediatek/ims/MtkImsCallSessionProxy;

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2455
    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v13

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$4900(Lcom/mediatek/ims/ImsService;)[Landroid/telephony/ims/ImsCallProfile;

    move-result-object v8

    aget-object v14, v8, v4

    const/4 v15, 0x0

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2456
    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v10

    aget-object v17, v10, v4

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->access$2000(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v10

    aget-object v18, v10, v4

    move-object v12, v7

    move-object/from16 v16, v8

    move-object/from16 v19, v3

    move/from16 v20, v4

    invoke-direct/range {v12 .. v20}, Lcom/mediatek/ims/MtkImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    aput-object v7, v6, v4

    .line 2458
    new-instance v6, Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2459
    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v13

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$4900(Lcom/mediatek/ims/ImsService;)[Landroid/telephony/ims/ImsCallProfile;

    move-result-object v7

    aget-object v14, v7, v4

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2460
    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v8

    aget-object v17, v8, v4

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$2000(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v8

    aget-object v18, v8, v4

    move-object v12, v6

    move-object/from16 v16, v7

    invoke-direct/range {v12 .. v20}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    .line 2462
    .local v6, "imsCallSessionProxy":Lcom/mediatek/ims/ImsCallSessionProxy;
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$4800(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v7, v6}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setAospCallSessionProxy(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2463
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$4800(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->setMtkCallSessionProxy(Lcom/mediatek/ims/MtkImsCallSessionProxy;)V

    .line 2465
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$5000(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v7

    .line 2466
    invoke-virtual {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v8

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2467
    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->access$4800(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v10

    aget-object v10, v10, v4

    .line 2465
    invoke-interface {v7, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2469
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$2000(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v7

    aget-object v7, v7, v4

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-interface {v7, v8}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForCallInfo(Landroid/os/Handler;)V

    .line 2470
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$2000(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v7

    aget-object v7, v7, v4

    .line 2472
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2470
    invoke-interface {v7, v11, v8, v5, v11}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallIndication(IIII)V

    .line 2476
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$4700(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v7

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_35

    .line 2478
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v8, "handleMessage() : Start deal with pending 133"

    invoke-static {v7, v8}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2480
    invoke-virtual {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v7

    .line 2481
    .local v7, "cs_impl":Lcom/android/ims/internal/IImsCallSession;
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$5000(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 2482
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$5000(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2485
    :cond_f
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$4800(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->callTerminated()V

    .line 2486
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$4800(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-virtual {v8, v9}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setServiceImpl(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 2487
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$4800(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v8

    aput-object v9, v8, v4

    .line 2488
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$4700(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v8

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-boolean v11, v8, v9

    .line 2489
    .end local v7    # "cs_impl":Lcom/android/ims/internal/IImsCallSession;
    goto/16 :goto_1e

    .line 2393
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "callId":Ljava/lang/String;
    .end local v4    # "phoneId":I
    .end local v5    # "seqNum":I
    .end local v6    # "imsCallSessionProxy":Lcom/mediatek/ims/ImsCallSessionProxy;
    :pswitch_c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    .line 2394
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    aget v4, v0, v11

    .line 2395
    .local v4, "eccSupport":I
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive EVENT_IMS_SUPPORT_ECC_URC, enable = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " phoneId = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2401
    if-nez v4, :cond_10

    .line 2402
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$4400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v0, v5

    and-int/lit8 v6, v6, -0x2

    aput v6, v0, v5

    goto :goto_9

    .line 2403
    :cond_10
    const/4 v0, 0x1

    if-ne v4, v0, :cond_11

    .line 2404
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$4400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v7, v5, v6

    or-int/2addr v7, v0

    aput v7, v5, v6

    goto :goto_9

    .line 2405
    :cond_11
    if-ne v4, v10, :cond_12

    .line 2406
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$4400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v0, v5

    and-int/lit8 v6, v6, -0x11

    aput v6, v0, v5

    goto :goto_9

    .line 2407
    :cond_12
    const/4 v0, 0x3

    if-ne v4, v0, :cond_13

    .line 2408
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$4400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v7, v0, v5

    or-int/2addr v6, v7

    aput v6, v0, v5

    .line 2410
    :cond_13
    :goto_9
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$4500(Lcom/mediatek/ims/ImsService;)Ljava/util/ArrayList;

    move-result-object v0

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/HashSet;

    .line 2411
    .local v5, "ecclisteners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    const/4 v0, 0x0

    .line 2412
    .local v0, "resultEvent":I
    if-eqz v5, :cond_35

    .line 2413
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$4400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v6, v7

    if-lez v6, :cond_14

    .line 2414
    const/4 v0, 0x2

    move v6, v0

    goto :goto_a

    .line 2417
    :cond_14
    const/4 v0, 0x4

    move v6, v0

    .line 2420
    .end local v0    # "resultEvent":I
    .local v6, "resultEvent":I
    :goto_a
    monitor-enter v5

    .line 2422
    :try_start_0
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/ims/internal/IImsRegistrationListener;

    .line 2423
    .local v7, "l":Lcom/android/ims/internal/IImsRegistrationListener;
    const/4 v8, 0x1

    invoke-interface {v7, v8, v6}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationServiceCapabilityChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2425
    .end local v7    # "l":Lcom/android/ims/internal/IImsRegistrationListener;
    goto :goto_b

    .line 2428
    :cond_15
    goto :goto_c

    .line 2429
    :catchall_0
    move-exception v0

    goto :goto_d

    .line 2426
    :catch_0
    move-exception v0

    .line 2429
    :goto_c
    :try_start_1
    monitor-exit v5

    goto/16 :goto_1e

    :goto_d
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2381
    .end local v3    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "eccSupport":I
    .end local v5    # "ecclisteners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    .end local v6    # "resultEvent":I
    :pswitch_d
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v0

    .line 2382
    .local v0, "xuiManager":Lcom/mediatek/ims/internal/ImsXuiManager;
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2383
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 2385
    .restart local v3    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    .line 2386
    .local v4, "exui":[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$4200()Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage() : XUI_INFO="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v10

    const-string v8, "ImsService"

    invoke-static {v8, v7}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2387
    :cond_16
    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v6, v4, v10

    invoke-virtual {v0, v5, v6}, Lcom/mediatek/ims/internal/ImsXuiManager;->setXui(ILjava/lang/String;)V

    .line 2389
    .end local v3    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "exui":[Ljava/lang/String;
    :cond_17
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v3, v0, v4}, Lcom/mediatek/ims/ImsService;->access$4300(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/internal/ImsXuiManager;I)V

    .line 2390
    goto/16 :goto_1e

    .line 2351
    .end local v0    # "xuiManager":Lcom/mediatek/ims/internal/ImsXuiManager;
    :pswitch_e
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v3, "handleMessage() : receive EVENT_RUN_GBA: Enter messege"

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2356
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 2357
    .local v4, "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    .line 2358
    .local v5, "nafInfoTemp":[Ljava/lang/String;
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;

    .line 2360
    .local v6, "result":Lcom/mediatek/ims/ImsService$NafSessionKeyResult;
    iget-object v8, v6, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->lockObj:Ljava/lang/Object;

    monitor-enter v8

    .line 2361
    :try_start_2
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_18

    .line 2362
    const/4 v0, 0x3

    iput v0, v6, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->cmdResult:I

    .line 2363
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v3, "handleMessage() : receive EVENT_RUN_GBA: IMS_SS_CMD_ERROR"

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    goto :goto_e

    .line 2365
    :cond_18
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$4200()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2366
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage() : receive EVENT_RUN_GBA: hexkey:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v5, v11

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", btid:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v5, v10

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", keylifetime:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    aget-object v12, v5, v9

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2369
    :cond_19
    new-instance v0, Lcom/mediatek/gba/NafSessionKey;

    aget-object v3, v5, v10

    aget-object v9, v5, v11

    .line 2370
    invoke-static {v9}, Lcom/mediatek/ims/ImsCommonUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v9

    const/4 v10, 0x3

    aget-object v10, v5, v10

    invoke-direct {v0, v3, v9, v10}, Lcom/mediatek/gba/NafSessionKey;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 2372
    .local v0, "nafKey":Lcom/mediatek/gba/NafSessionKey;
    iput-object v0, v6, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->nafSessionKey:Lcom/mediatek/gba/NafSessionKey;

    .line 2373
    iput v7, v6, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->cmdResult:I

    .line 2374
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v7, "handleMessage() : receive EVENT_RUN_GBA: IMS_SS_CMD_SUCCESS"

    invoke-static {v3, v7}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2376
    .end local v0    # "nafKey":Lcom/mediatek/gba/NafSessionKey;
    :goto_e
    iget-object v0, v6, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2377
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v3, "handleMessage() : receive EVENT_RUN_GBA: notify result"

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2378
    monitor-exit v8

    .line 2379
    goto/16 :goto_1e

    .line 2378
    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 2320
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "nafInfoTemp":[Ljava/lang/String;
    .end local v6    # "result":Lcom/mediatek/ims/ImsService$NafSessionKeyResult;
    :pswitch_f
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2321
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    aget v4, v4, v11

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    move v4, v5

    goto :goto_f

    :cond_1a
    move v4, v11

    .line 2322
    .local v4, "enable":Z
    :goto_f
    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v6

    .line 2323
    .local v6, "simState":I
    if-eq v6, v5, :cond_1c

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    .line 2324
    invoke-virtual {v5, v7}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v5

    if-gt v5, v3, :cond_1b

    goto :goto_10

    .line 2334
    :cond_1b
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$3700(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v3

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-boolean v11, v3, v5

    goto :goto_12

    .line 2326
    :cond_1c
    :goto_10
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$3500(Lcom/mediatek/ims/ImsService;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 2327
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2328
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2329
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v5

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$3600(Lcom/mediatek/ims/ImsService;)Landroid/content/BroadcastReceiver;

    move-result-object v7

    invoke-virtual {v5, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2330
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/mediatek/ims/ImsService;->access$3502(Lcom/mediatek/ims/ImsService;Z)Z

    goto :goto_11

    .line 2326
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_1d
    const/4 v7, 0x1

    .line 2332
    :goto_11
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$3700(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v3

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-boolean v7, v3, v5

    .line 2336
    :goto_12
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$3800(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v3

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-boolean v4, v3, v5

    .line 2337
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$3900(Lcom/mediatek/ims/ImsService;)I

    move-result v3

    if-nez v3, :cond_1e

    .line 2338
    const-string v3, "vendor.ril.imsconfig.force.notify"

    const-string v5, "1"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2340
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v5, "com.android.intent.action.IMS_FEATURE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2341
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v5

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$4000(Lcom/mediatek/ims/ImsService;)Landroid/content/BroadcastReceiver;

    move-result-object v7

    invoke-virtual {v5, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2343
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_1e
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$3900(Lcom/mediatek/ims/ImsService;)I

    move-result v5

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const/4 v8, 0x1

    shl-int v7, v8, v7

    or-int/2addr v5, v7

    invoke-static {v3, v5}, Lcom/mediatek/ims/ImsService;->access$3902(Lcom/mediatek/ims/ImsService;I)I

    .line 2344
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v3, v5, v4}, Lcom/mediatek/ims/ImsService;->access$4100(Lcom/mediatek/ims/ImsService;IZ)V

    .line 2345
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage() : Volte_Setting_Enable="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", register:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2346
    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$3700(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v7

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-boolean v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mWaitFeatureChange:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2347
    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$3900(Lcom/mediatek/ims/ImsService;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2345
    invoke-static {v3, v5}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2348
    goto/16 :goto_1e

    .line 2308
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "enable":Z
    .end local v6    # "simState":I
    :pswitch_10
    goto/16 :goto_1e

    .line 2316
    :pswitch_11
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Lcom/mediatek/ims/ImsService;->updateRadioState(II)V

    .line 2317
    goto/16 :goto_1e

    .line 2313
    :pswitch_12
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v0, v11, v3}, Lcom/mediatek/ims/ImsService;->updateRadioState(II)V

    .line 2314
    goto/16 :goto_1e

    .line 2302
    :pswitch_13
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.ims.IMS_SERVICE_DEREGISTERED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2303
    .local v0, "intent":Landroid/content/Intent;
    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const-string v4, "android:phone_id"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2304
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2305
    goto/16 :goto_1e

    .line 2299
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_14
    goto/16 :goto_1e

    .line 2267
    :pswitch_15
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2269
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 2271
    .local v3, "eiusd":[Ljava/lang/String;
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_ON_USSI, m = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", str = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    aget-object v7, v3, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2273
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v4, v6, v6, v10}, Lcom/mediatek/ims/ImsService;->onCreateCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    .line 2275
    .local v4, "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    const-string v5, "dialstring"

    invoke-virtual {v4, v5, v10}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2277
    aget-object v5, v3, v11

    const-string v7, "m"

    invoke-virtual {v4, v7, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    aget-object v5, v3, v6

    const-string v6, "str"

    invoke-virtual {v4, v6, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    new-instance v5, Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2281
    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v19

    const/16 v21, 0x0

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2285
    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v7

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v23, v7, v8

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2286
    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$2000(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v7

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v24, v7, v8

    const-string v25, "-1"

    move-object/from16 v18, v5

    move-object/from16 v20, v4

    move-object/from16 v22, v6

    move/from16 v26, v8

    invoke-direct/range {v18 .. v26}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    .line 2290
    .local v5, "ussiSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2291
    .local v6, "ussiExtras":Landroid/os/Bundle;
    const-string v7, "android:ussd"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2292
    const-string v7, "android:imsCallID"

    const-string v8, "-1"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v7, v8}, Lcom/mediatek/ims/ImsService;->mapPhoneIdToServiceId(I)I

    move-result v7

    const-string v8, "android:imsServiceId"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2295
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v7, v8, v5, v6}, Lcom/mediatek/ims/ImsService;->access$3400(Lcom/mediatek/ims/ImsService;ILandroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    .line 2296
    goto/16 :goto_1e

    .line 2233
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "eiusd":[Ljava/lang/String;
    .end local v4    # "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    .end local v5    # "ussiSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    .end local v6    # "ussiExtras":Landroid/os/Bundle;
    :pswitch_16
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2234
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 2239
    .local v3, "sipMessage":[Ljava/lang/String;
    if-eqz v3, :cond_35

    .line 2240
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage() : Method ="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x3

    aget-object v12, v3, v11

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " response_code ="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v3, v7

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " reason_text ="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v3, v4

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2243
    const/4 v6, 0x3

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2244
    .local v6, "sipMethod":I
    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2245
    .local v7, "sipResponseCode":I
    aget-object v4, v3, v4

    .line 2246
    .local v4, "sipReasonText":Ljava/lang/String;
    if-eqz v6, :cond_1f

    const/16 v8, 0x9

    if-ne v6, v8, :cond_22

    .line 2247
    :cond_1f
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$3100(Lcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ext/IImsServiceExt;

    move-result-object v8

    .line 2248
    .local v8, "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    iget-object v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v11}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v11

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v11, v11, v12

    if-eq v11, v10, :cond_21

    if-eqz v8, :cond_20

    .line 2250
    invoke-interface {v8}, Lcom/mediatek/ims/ext/IImsServiceExt;->isWfcRegErrorCauseSupported()Z

    move-result v11

    if-eqz v11, :cond_20

    goto :goto_13

    .line 2261
    :cond_20
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$3200(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v7, v5, v9

    goto :goto_14

    .line 2251
    :cond_21
    :goto_13
    iget-object v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v11}, Lcom/mediatek/ims/ImsService;->access$3200(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v11

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v13, v7, v6, v4}, Lcom/mediatek/ims/ImsService;->access$3300(Lcom/mediatek/ims/ImsService;IILjava/lang/String;)I

    move-result v13

    aput v13, v11, v12

    .line 2253
    iget-object v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v11}, Lcom/mediatek/ims/ImsService;->access$3200(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v11

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v11, v11, v12

    const/16 v12, 0x640

    if-ne v11, v12, :cond_22

    if-nez v6, :cond_22

    .line 2255
    iget-object v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v12, "handleMessage() : L-ePDG-5025 8-13. Received SIP REG 403 response, perform ImsDiscommect flow."

    invoke-static {v11, v12}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2256
    new-array v10, v10, [I

    fill-array-data v10, :array_0

    .line 2257
    .local v10, "result":[I
    new-instance v11, Landroid/os/AsyncResult;

    invoke-direct {v11, v9, v10, v9}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v9, v11

    .line 2258
    .local v9, "arCip":Landroid/os/AsyncResult;
    invoke-virtual {v1, v5, v9}, Lcom/mediatek/ims/ImsService$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v11, 0x3e8

    invoke-virtual {v1, v5, v11, v12}, Lcom/mediatek/ims/ImsService$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2264
    .end local v4    # "sipReasonText":Ljava/lang/String;
    .end local v6    # "sipMethod":I
    .end local v7    # "sipResponseCode":I
    .end local v8    # "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    .end local v9    # "arCip":Landroid/os/AsyncResult;
    .end local v10    # "result":[I
    :cond_22
    :goto_14
    goto/16 :goto_1e

    .line 2194
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "sipMessage":[Ljava/lang/String;
    :pswitch_17
    goto/16 :goto_1e

    .line 2191
    :pswitch_18
    goto/16 :goto_1e

    .line 2170
    :pswitch_19
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage() : [Info]receive EVENT_IMS_ENABLING_URC, socketId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ExpImsState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$1900(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mImsState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2171
    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2170
    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2173
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v0, v0, v3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_23

    .line 2174
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2175
    .local v0, "intent":Landroid/content/Intent;
    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const-string v4, "android:phone_id"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2176
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2177
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v4, "handleMessage() : broadcast IMS_SERVICE_UP"

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2179
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_23
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-nez v0, :cond_24

    .line 2181
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$2300(Lcom/mediatek/ims/ImsService;I)V

    goto :goto_15

    .line 2182
    :cond_24
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v0, v0, v3

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2184
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v0

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2186
    :cond_25
    :goto_15
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const/4 v4, 0x1

    aput v4, v0, v3

    .line 2188
    goto/16 :goto_1e

    .line 2435
    :pswitch_1a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2436
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 2437
    .local v3, "callInfo":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 2438
    .local v4, "msgType":I
    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2439
    const/16 v5, 0x85

    if-ne v4, v5, :cond_35

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$4600(Lcom/mediatek/ims/ImsService;)[Ljava/lang/String;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v5, v5, v6

    if-eqz v5, :cond_35

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2440
    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$4600(Lcom/mediatek/ims/ImsService;)[Ljava/lang/String;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v5, v5, v6

    aget-object v6, v3, v11

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 2441
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$4700(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    goto/16 :goto_1e

    .line 2209
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "callInfo":[Ljava/lang/String;
    .end local v4    # "msgType":I
    :pswitch_1b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2210
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$2500(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-boolean v3, v3, v4

    if-nez v3, :cond_26

    .line 2211
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3, v4, v0}, Lcom/mediatek/ims/ImsService;->access$2600(Lcom/mediatek/ims/ImsService;ILandroid/os/AsyncResult;)V

    goto :goto_16

    .line 2214
    :cond_26
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3, v4, v0}, Lcom/mediatek/ims/ImsService;->access$2700(Lcom/mediatek/ims/ImsService;ILandroid/os/AsyncResult;)V

    .line 2215
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3, v0}, Lcom/mediatek/ims/ImsService;->access$2802(Lcom/mediatek/ims/ImsService;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 2216
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->access$2902(Lcom/mediatek/ims/ImsService;I)I

    .line 2221
    :goto_16
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$2000(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v3, v3, v4

    invoke-direct {v1, v3}, Lcom/mediatek/ims/ImsService$MyHandler;->setRttModeForIncomingCall(Lcom/mediatek/ims/ril/ImsCommandsInterface;)V

    .line 2223
    goto/16 :goto_1e

    .line 2197
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1c
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage() : [Info]EVENT_IMS_DISABLED_URC: socketId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ExpImsState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$1900(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mImsState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2198
    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2197
    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2199
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/mediatek/ims/ImsService;->access$2400(Lcom/mediatek/ims/ImsService;IZ)V

    .line 2200
    goto/16 :goto_1e

    .line 2202
    :pswitch_1d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2203
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_35

    .line 2204
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v4, "handleMessage() : turnOnIms failed, return to disabled state!"

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->access$300(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2205
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v3, v4, v11}, Lcom/mediatek/ims/ImsService;->access$2400(Lcom/mediatek/ims/ImsService;IZ)V

    goto/16 :goto_1e

    .line 2310
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1e
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v0, v3, v11}, Lcom/mediatek/ims/ImsService;->access$2400(Lcom/mediatek/ims/ImsService;IZ)V

    .line 2311
    goto/16 :goto_1e

    .line 2068
    :pswitch_1f
    invoke-virtual {v1, v5}, Lcom/mediatek/ims/ImsService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2070
    invoke-virtual {v1, v5}, Lcom/mediatek/ims/ImsService$MyHandler;->removeMessages(I)V

    .line 2086
    :cond_27
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2088
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/4 v3, 0x3

    .line 2089
    .local v3, "newImsRegInfo":I
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    aget v4, v4, v11

    const/4 v5, 0x1

    if-ne v4, v5, :cond_28

    .line 2090
    const/4 v3, 0x0

    goto :goto_17

    .line 2092
    :cond_28
    const/4 v3, 0x1

    .line 2095
    :goto_17
    const-string v4, "persist.vendor.ims.simulate"

    invoke-static {v4, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_2a

    .line 2096
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$200(Lcom/mediatek/ims/ImsService;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 2097
    move v4, v11

    goto :goto_18

    :cond_29
    const/4 v4, 0x1

    :goto_18
    move v3, v4

    .line 2098
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage() : Override EVENT_IMS_REGISTRATION_INFO: newImsRegInfo="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2102
    :cond_2a
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 2105
    .local v4, "newImsExtInfo":I
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 2106
    and-int/lit8 v5, v4, 0x10

    if-ne v5, v6, :cond_2b

    .line 2107
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v10, v5, v7

    goto :goto_19

    .line 2110
    :cond_2b
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const/4 v8, 0x1

    aput v8, v5, v7

    .line 2115
    :cond_2c
    :goto_19
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage() : newReg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " oldReg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$1000(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v8

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v8, v8, v12

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2117
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1000(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v3, v5, v7

    .line 2118
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1000(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v8

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v8, v8, v12

    invoke-static {v5, v7, v8, v11}, Lcom/mediatek/ims/ImsService;->access$1600(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 2121
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage() : newRegExt:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "oldRegExt:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$1500(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v8

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v8, v8, v12

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2123
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1000(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v5, v5, v7

    if-nez v5, :cond_2d

    .line 2124
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1500(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v4, v5, v7

    goto :goto_1a

    .line 2126
    :cond_2d
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1500(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v11, v5, v7

    .line 2128
    :goto_1a
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1500(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v8

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v8, v8, v12

    invoke-static {v5, v7, v8, v11}, Lcom/mediatek/ims/ImsService;->access$1700(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 2130
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v5, v7}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v5

    .line 2131
    .local v5, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v7

    .line 2133
    .local v7, "ss":Landroid/telephony/ServiceState;
    if-eqz v7, :cond_30

    .line 2134
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v8

    .line 2135
    .local v8, "dataState":I
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v11

    .line 2136
    .local v11, "dataNetType":I
    iget-object v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "data="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " , dataNetType="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2137
    iget-object v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v12}, Lcom/mediatek/ims/ImsService;->access$1000(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v12

    iget v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v12, v12, v13

    if-nez v12, :cond_2f

    .line 2138
    if-nez v8, :cond_2e

    .line 2139
    iget-object v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v12}, Lcom/mediatek/ims/ImsService;->access$1000(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v14

    iget v15, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v14, v14, v15

    invoke-static {v12, v13, v14}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;II)V

    goto :goto_1b

    .line 2141
    :cond_2e
    iget-object v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;II)V

    goto :goto_1b

    .line 2144
    :cond_2f
    iget-object v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v12}, Lcom/mediatek/ims/ImsService;->access$1000(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v14

    iget v15, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v14, v14, v15

    invoke-static {v12, v13, v14}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;II)V

    .line 2146
    .end local v8    # "dataState":I
    .end local v11    # "dataNetType":I
    :goto_1b
    goto :goto_1c

    .line 2147
    :cond_30
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$1000(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v12

    iget v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v12, v12, v13

    invoke-static {v8, v11, v12}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;II)V

    .line 2151
    :goto_1c
    const/4 v8, 0x0

    .line 2152
    .local v8, "isVoWiFi":Z
    iget-object v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v11}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v11

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v11, v11, v12

    if-ne v11, v10, :cond_31

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2153
    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->access$1500(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v11

    const/4 v11, 0x1

    and-int/2addr v10, v11

    if-eq v10, v11, :cond_32

    :cond_31
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2154
    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->access$1500(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v11

    and-int/2addr v10, v6

    if-ne v10, v6, :cond_33

    .line 2155
    :cond_32
    const/4 v8, 0x1

    .line 2158
    :cond_33
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v6

    .line 2160
    .local v6, "oemPlugin":Lcom/mediatek/ims/plugin/OemPluginFactory;
    if-eqz v6, :cond_34

    .line 2161
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2162
    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v9

    .line 2161
    invoke-interface {v6, v9}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsRegistrationPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;

    move-result-object v9

    goto :goto_1d

    .line 2162
    :cond_34
    nop

    :goto_1d
    nop

    .line 2163
    .local v9, "imsRegOemPlugin":Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
    if-eqz v9, :cond_35

    .line 2164
    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2165
    invoke-static {v11}, Lcom/mediatek/ims/ImsService;->access$1000(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v11

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v11, v11, v12

    .line 2164
    invoke-interface {v9, v10, v11, v8}, Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;->broadcastImsRegistration(IIZ)V

    .line 2684
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "newImsRegInfo":I
    .end local v4    # "newImsExtInfo":I
    .end local v5    # "subId":I
    .end local v6    # "oemPlugin":Lcom/mediatek/ims/plugin/OemPluginFactory;
    .end local v7    # "ss":Landroid/telephony/ServiceState;
    .end local v8    # "isVoWiFi":Z
    .end local v9    # "imsRegOemPlugin":Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
    :cond_35
    :goto_1e
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$3100(Lcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ext/IImsServiceExt;

    move-result-object v0

    .line 2685
    .local v0, "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    if-eqz v0, :cond_36

    .line 2686
    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0, v3, v4, v2}, Lcom/mediatek/ims/ext/IImsServiceExt;->notifyImsServiceEvent(ILandroid/content/Context;Landroid/os/Message;)V

    .line 2688
    :cond_36
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_0
        :pswitch_1c
        :pswitch_0
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_1f
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x10
    .end array-data
.end method
