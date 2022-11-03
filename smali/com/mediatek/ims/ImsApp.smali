.class public Lcom/mediatek/ims/ImsApp;
.super Landroid/app/Application;
.source "ImsApp.java"


# static fields
.field private static final IMS_SERVICE:Ljava/lang/String; = "ims"

.field private static final TAG:Ljava/lang/String; = "ImsApp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 7

    .line 60
    const-string v0, "persist.vendor.ims_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ImsApp"

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "IMS not support, do not init ImsService"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void

    .line 64
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_2

    .line 65
    const-string v0, "ImsApp onCreate begin"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {p0}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v0

    .line 71
    .local v0, "imsService":Lcom/mediatek/ims/ImsService;
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 73
    .local v2, "isDynamicBinding":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDynamicBinding? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 75
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsService;->getBinder()Lcom/android/ims/ImsServiceBase$ImsServiceBinder;

    move-result-object v4

    const-string v5, "ims"

    invoke-static {v5, v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 77
    :cond_1
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->setContextAndInitRefVTP(Landroid/content/Context;)V

    .line 79
    new-instance v4, Lcom/mediatek/ims/MtkImsService;

    invoke-direct {v4, p0, v0}, Lcom/mediatek/ims/MtkImsService;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ImsService;)V

    .line 80
    .local v4, "mtkImsService":Lcom/mediatek/ims/MtkImsService;
    invoke-virtual {v4}, Lcom/mediatek/ims/MtkImsService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const-string v6, "mtkIms"

    invoke-static {v6, v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 83
    const-string v3, "ImsApp onCreate end"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.mediatek.ims.MTK_IMS_SERVICE_UP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    .end local v0    # "imsService":Lcom/mediatek/ims/ImsService;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isDynamicBinding":Z
    .end local v4    # "mtkImsService":Lcom/mediatek/ims/MtkImsService;
    :cond_2
    return-void
.end method
