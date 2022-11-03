.class public Lcom/mediatek/ims/internal/DialogEventPackageReceiver;
.super Ljava/lang/Object;
.source "DialogEventPackageReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/DialogEventPackageReceiver$ListenerBase;,
        Lcom/mediatek/ims/internal/DialogEventPackageReceiver$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DialogEventPackageReceiver"


# instance fields
.field private mListener:Lcom/mediatek/ims/internal/DialogEventPackageReceiver$Listener;

.field private mParser:Lcom/mediatek/ims/internal/DialogEventPackageParser;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/internal/DialogEventPackageReceiver$Listener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mediatek/ims/internal/DialogEventPackageReceiver$Listener;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/mediatek/ims/internal/DialogEventPackageReceiver$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/DialogEventPackageReceiver$1;-><init>(Lcom/mediatek/ims/internal/DialogEventPackageReceiver;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DialogEventPackageReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DialogEventPackageReceiver;->registerForBroadcast(Landroid/content/Context;)V

    .line 66
    new-instance v0, Lcom/mediatek/ims/internal/DepXmlPullParser;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/DepXmlPullParser;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DialogEventPackageReceiver;->mParser:Lcom/mediatek/ims/internal/DialogEventPackageParser;

    .line 67
    iput-object p2, p0, Lcom/mediatek/ims/internal/DialogEventPackageReceiver;->mListener:Lcom/mediatek/ims/internal/DialogEventPackageReceiver$Listener;

    .line 68
    const-string v0, "DialogEventPackageReceiver"

    invoke-static {v0, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/internal/DialogEventPackageReceiver;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DialogEventPackageReceiver;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 28
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DialogEventPackageReceiver;->processDepIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/internal/DialogEventPackageReceiver;)Lcom/mediatek/ims/internal/DialogEventPackageReceiver$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DialogEventPackageReceiver;

    .line 28
    iget-object v0, p0, Lcom/mediatek/ims/internal/DialogEventPackageReceiver;->mListener:Lcom/mediatek/ims/internal/DialogEventPackageReceiver$Listener;

    return-object v0
.end method

.method private processDepIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 98
    const-string v0, "com.mediatek.intent.extra.DEP_CONTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "content":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_IMS_DIALOG_EVENT_PACKAGE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogEventPackageReceiver"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 103
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/internal/DialogEventPackageReceiver;->mParser:Lcom/mediatek/ims/internal/DialogEventPackageParser;

    invoke-interface {v3, v1}, Lcom/mediatek/ims/internal/DialogEventPackageParser;->parse(Ljava/io/InputStream;)Lcom/mediatek/ims/internal/DialogInfo;

    move-result-object v3

    .line 104
    .local v3, "dialogInfo":Lcom/mediatek/ims/internal/DialogInfo;
    invoke-static {}, Lcom/mediatek/ims/internal/ExternalCallStateFactory;->getInstance()Lcom/mediatek/ims/internal/ExternalCallStateFactory;

    move-result-object v4

    .line 105
    invoke-virtual {v4, v3}, Lcom/mediatek/ims/internal/ExternalCallStateFactory;->makeExternalCallStates(Lcom/mediatek/ims/internal/DialogInfo;)Ljava/util/List;

    move-result-object v4

    .line 106
    .local v4, "dialogList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsExternalCallState;>;"
    iget-object v5, p0, Lcom/mediatek/ims/internal/DialogEventPackageReceiver;->mListener:Lcom/mediatek/ims/internal/DialogEventPackageReceiver$Listener;

    invoke-interface {v5, v4}, Lcom/mediatek/ims/internal/DialogEventPackageReceiver$Listener;->onStateChanged(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "dialogInfo":Lcom/mediatek/ims/internal/DialogInfo;
    .end local v4    # "dialogList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsExternalCallState;>;"
    goto :goto_0

    .line 109
    :catch_0
    move-exception v3

    .line 110
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processDepIntent has IOException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 107
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 108
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processDepIntent has XmlPullParserException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_0
    nop

    .line 112
    :goto_1
    return-void
.end method

.method private registerForBroadcast(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.intent.action.ims.dialogEventPackage"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/internal/DialogEventPackageReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 75
    return-void
.end method
