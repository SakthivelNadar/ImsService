.class public Lcom/mediatek/wfo/impl/WifiPdnHandler;
.super Landroid/os/Handler;
.source "WifiPdnHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x3e8

.field private static final DEFAULT_MTU_SIZE:I = 0x5dc

.field public static final EVENT_HANDLE_AIRPLANE_MODE:I = 0x480

.field private static final EVENT_INITIALIZE:I = 0x3f7

.field public static final EVENT_ON_NATT_KEEP_ALIVE_CHANGED:I = 0x44f

.field public static final EVENT_ON_WIFI_LOCK:I = 0x481

.field public static final EVENT_ON_WIFI_MONITORING_THRESHOLD_CHANGED:I = 0x44d

.field public static final EVENT_ON_WIFI_PDN_ACTIVATE:I = 0x44e

.field public static final EVENT_ON_WIFI_PING_REQUEST:I = 0x47e

.field private static final EVENT_RADIO_AVAILABLE:I = 0x3ed

.field private static final EVENT_RETRY_CHECK_IF_START_WIFI_SCAN:I = 0x3f2

.field private static final EVENT_RETRY_INIT:I = 0x3f0

.field private static final EVENT_RETRY_UPDATE_LAST_RSSI:I = 0x3f3

.field private static final EVENT_RETRY_UPDATE_WIFI_CONNTECTED_INFO:I = 0x3f1

.field public static final EVENT_SET_NATT_STATUS:I = 0x3ef

.field private static final EVENT_SET_WIFI_ASSOC:I = 0x3eb

.field private static final EVENT_SET_WIFI_ENABLED:I = 0x3ea

.field private static final EVENT_SET_WIFI_IP_ADDR:I = 0x3ec

.field public static final EVENT_SET_WIFI_PING_RESULT:I = 0x47f

.field private static final EVENT_SET_WIFI_SIGNAL_STRENGTH:I = 0x3e9

.field private static final EVENT_SET_WIFI_UE_MAC:I = 0x3f6

.field private static final EVENT_WIFI_NETWORK_STATE_CHANGE:I = 0x3e8

.field private static final EVENT_WIFI_SCAN:I = 0x3ee

.field private static final EVENT_WIFI_SCAN_AVAILABLE:I = 0x3f4

.field private static final EVENT_WIFI_STATE_CHANGE:I = 0x3f5

.field private static final EWIFIEN_AP_MODE_STATE:I = 0x8

.field private static final EWIFIEN_CAUSE:I = 0x1

.field private static final EWIFIEN_NEED_SEND_AP_MODE:I = 0x10

.field private static final EWIFIEN_NEED_SEND_WIFI_ENABLED:I = 0x4

.field private static final EWIFIEN_WIFI_ENABLED_STATE:I = 0x2

.field private static final EXTRA_WFC_STATUS_KEY:Ljava/lang/String; = "wfc_status"

.field private static final MTK_KEY_WOS_SUPPORT_WFC_IN_FLIGHTMODE:Ljava/lang/String; = "wos_flight_mode_support_bool"

.field private static final NEED_DEFER:I = 0x1

.field private static final NONE_SSID:Ljava/lang/String; = "<unknown ssid>"

.field private static final NO_NEED_DEFER:I = 0x0

.field private static final PROPERTY_MIMS_SUPPORT:Ljava/lang/String; = "persist.vendor.mims_support"

.field private static final PROPERTY_WFC_ENABLE:Ljava/lang/String; = "persist.vendor.mtk.wfc.enable"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final RESPONSE_SET_NATT_KEEP_ALIVE_STATUS:I = 0x4b4

.field private static final RESPONSE_SET_WIFI_ASSOC:I = 0x4b2

.field private static final RESPONSE_SET_WIFI_ENABLED:I = 0x4b0

.field private static final RESPONSE_SET_WIFI_IP_ADDR:I = 0x4b3

.field private static final RESPONSE_SET_WIFI_PING_RESULT:I = 0x4b5

.field private static final RESPONSE_SET_WIFI_SIGNAL_LEVEL:I = 0x4b1

.field private static final RESPONSE_SET_WIFI_UE_MAC:I = 0x4b6

.field private static final RETRY_TIMEOUT:I = 0xbb8

.field public static final SNR_UNKNOWN:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "WifiPdnHandler"

.field private static final TELDBG:Z

.field private static final USR_BUILD:Z

.field private static final WFC_NOTIFY_GO:I = 0x2

.field private static final WFC_REQUEST_PARTIAL_SCAN:Ljava/lang/String; = "com.mediatek.intent.action.WFC_REQUEST_PARTIAL_SCAN"

.field private static final WFC_STATUS_CHANGED:Ljava/lang/String; = "com.mediatek.intent.action.WFC_STATUS_CHANGED"

.field private static final WIFI_IF_NAME:Ljava/lang/String; = "wlan0"

.field private static final WIFI_SCAN_DELAY:I = 0xbb8

.field private static final WIFI_STATE_UI_DISABLING:I = 0x26ac

.field private static mWifiUeMac:Ljava/lang/String;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDeferredNotificationToWifi:Z

.field private mDnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mHasWiFiDisabledPending:Z

.field private mIfName:Ljava/lang/String;

.field private mIsAirplaneModeChange:Z

.field private mIsAirplaneModeOn:Z

.field private mIsWifiConnected:Z

.field private mIsWifiEnabled:Z

.field private mLastRssi:I

.field private mLock:Ljava/lang/Object;

.field private mModemReqWifiLock:[Z

.field private mMtu:I

.field private mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

.field private mNetwork:Landroid/net/Network;

.field private mPacketKeepAliveProcessor:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

.field private mPendingMsgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mPingDns:Lcom/mediatek/wfo/impl/PingDns;

.field private mRatType:[I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

.field private mSimCount:I

.field private mSsid:Ljava/lang/String;

.field private mStaStateCallback:Landroid/net/wifi/WifiManager$StaStateCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

.field private mWifiApMac:Ljava/lang/String;

.field private mWifiIpv4Address:Ljava/lang/String;

.field private mWifiIpv4Gateway:Ljava/lang/String;

.field private mWifiIpv4PrefixLen:I

.field private mWifiIpv6Address:Ljava/lang/String;

.field private mWifiIpv6Gateway:Ljava/lang/String;

.field private mWifiIpv6PrefixLen:I

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiLockCount:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiPdnExisted:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 126
    const-string v0, "02:00:00:00:00:00"

    sput-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    .line 209
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 210
    const-string v3, "userdebug"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->USR_BUILD:Z

    .line 211
    const-string v0, "persist.vendor.log.tel_dbg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    sput-boolean v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->TELDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Looper;[Lcom/mediatek/wfo/ril/MwiRIL;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simCount"    # I
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "mwiRil"    # [Lcom/mediatek/wfo/ril/MwiRIL;

    .line 638
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    .line 124
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    .line 125
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Gateway:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Gateway:Ljava/lang/String;

    .line 131
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    .line 132
    iput v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    .line 133
    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    .line 134
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    .line 135
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    .line 136
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    .line 138
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 139
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    .line 140
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    .line 141
    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    .line 224
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    .line 226
    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 228
    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mNetwork:Landroid/net/Network;

    .line 230
    new-instance v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;-><init>(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mStaStateCallback:Landroid/net/wifi/WifiManager$StaStateCallback;

    .line 570
    new-instance v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;-><init>(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 639
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    .line 640
    iput p2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    .line 641
    iput-object p4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    .line 643
    const/16 v0, 0x3f7

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 644
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 645
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 97
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isEccInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 97
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/wfo/impl/WifiPdnHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .param p1, "x1"    # Z

    .line 97
    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    return p1
.end method

.method static synthetic access$202(Lcom/mediatek/wfo/impl/WifiPdnHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .param p1, "x1"    # Z

    .line 97
    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 97
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 97
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 97
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 97
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/Network;)Landroid/net/Network;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .param p1, "x1"    # Landroid/net/Network;

    .line 97
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/wfo/impl/WifiPdnHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 97
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/wfo/impl/WifiPdnHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .param p1, "x1"    # I

    .line 97
    iput p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    return p1
.end method

.method private allowWfcInAirplaneMode()Z
    .locals 5

    .line 1205
    const/4 v0, 0x1

    .line 1206
    .local v0, "wfcInApMode":Z
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isAirPlaneMode()Z

    move-result v1

    .line 1207
    .local v1, "isAirplaneModeOn":Z
    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    const/4 v3, 0x1

    if-eq v2, v1, :cond_0

    .line 1208
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 1209
    iput-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    .line 1211
    :cond_0
    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eqz v2, :cond_3

    .line 1212
    const-string v2, "persist.vendor.mims_support"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "wos_flight_mode_support_bool"

    if-gt v2, v3, :cond_1

    .line 1213
    nop

    .line 1215
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMainCapabilityPhoneId()I

    move-result v2

    .line 1213
    invoke-direct {p0, v4, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getBooleanCarrierConfig(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_1

    .line 1217
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-ge v2, v3, :cond_3

    .line 1218
    invoke-direct {p0, v4, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getBooleanCarrierConfig(Ljava/lang/String;I)Z

    move-result v0

    .line 1220
    if-nez v0, :cond_2

    .line 1221
    goto :goto_1

    .line 1217
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1227
    .end local v2    # "i":I
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowWfcInAirplaneMode: mIsAirplaneModeOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", wfcInApMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1229
    return v0
.end method

.method private broadcastWfcStatusIntent(I)V
    .locals 2
    .param p1, "wfcStatus"    # I

    .line 1771
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    const/16 v1, 0x839

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1772
    return-void
.end method

.method private checkIfstartWifiScan(Z)V
    .locals 4
    .param p1, "scanImmediately"    # Z

    .line 1379
    invoke-virtual {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiPdnExisted()Z

    move-result v0

    .line 1381
    .local v0, "wifiPdnExisted":Z
    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    const/16 v2, 0x3ee

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 1383
    if-eqz p1, :cond_1

    .line 1384
    const-string v1, "call WifiManager.startScan()"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1385
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 1386
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 1387
    return-void

    .line 1389
    :cond_0
    const-string v1, "WifiPdnHandler"

    const-string v2, "checkIfstartWifiScan(): WifiManager null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    const/16 v1, 0x3f2

    .line 1391
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1390
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1392
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1393
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1394
    monitor-exit v3

    .line 1395
    return-void

    .line 1394
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1399
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1400
    const-string v1, "start 3s delay to trigger wifi scan"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1401
    nop

    .line 1402
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    .line 1401
    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1405
    :cond_2
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->removeMessages(I)V

    .line 1407
    :cond_3
    :goto_0
    return-void
.end method

.method private checkInvalidSimIdx(ILjava/lang/String;)Z
    .locals 1
    .param p1, "simIdx"    # I
    .param p2, "dbgMsg"    # Ljava/lang/String;

    .line 1576
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1580
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1577
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1578
    const/4 v0, 0x1

    return v0
.end method

.method private generateWifiEnableCause(ZZZZZ)I
    .locals 3
    .param p1, "needAPMode"    # Z
    .param p2, "apMode"    # Z
    .param p3, "needWifiEnabled"    # Z
    .param p4, "wifiEnabled"    # Z
    .param p5, "bCause"    # Z

    .line 1138
    const/4 v0, 0x0

    .line 1140
    .local v0, "cause":I
    if-eqz p1, :cond_0

    .line 1141
    or-int/lit8 v0, v0, 0x10

    .line 1143
    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    or-int/2addr v0, v2

    .line 1145
    if-eqz p3, :cond_2

    .line 1146
    or-int/lit8 v0, v0, 0x4

    .line 1148
    :cond_2
    if-eqz p4, :cond_3

    const/4 v1, 0x2

    :cond_3
    or-int/2addr v0, v1

    .line 1150
    or-int/2addr v0, p5

    .line 1152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateWifiEnableCause(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1153
    return v0
.end method

.method private getAirplaneModeFromSettings()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 455
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 457
    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 458
    .local v0, "value":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAirplaneModeFromSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    return v0

    .line 460
    .end local v0    # "value":Z
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "WifiPdnHandler"

    const-string v2, "Can not get AIRPLANE_MODE_ON from provider."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    throw v0
.end method

.method private getBooleanCarrierConfig(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 1233
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1234
    const-string v0, "WifiPdnHandler"

    const-string v1, "getBooleanCarrierConfig fail, mContext = null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1238
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-direct {p0, p2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getSubId(I)I

    move-result v1

    .line 1239
    .local v1, "subId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBooleanCarrierConfig: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1240
    const/4 v2, 0x0

    .line 1241
    .local v2, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_1

    .line 1242
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1244
    :cond_1
    const/4 v3, 0x1

    .line 1245
    .local v3, "ret":Z
    if-eqz v2, :cond_2

    .line 1246
    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 1249
    :cond_2
    const-string v4, "getBooleanCarrierConfig: get from default config"

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1250
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1252
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBooleanCarrierConfig sub: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1253
    return v3
.end method

.method private getMainCapabilityPhoneId()I
    .locals 2

    .line 1648
    const/4 v0, 0x1

    const-string v1, "persist.vendor.radio.simswitch"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sub-int/2addr v1, v0

    .line 1649
    .local v1, "phoneId":I
    if-ltz v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 1650
    :cond_0
    const/4 v1, -0x1

    .line 1652
    :cond_1
    return v1
.end method

.method private getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;
    .locals 2

    .line 1656
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1658
    .local v0, "phoneId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1659
    const/4 v1, 0x0

    return-object v1

    .line 1661
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .line 545
    move v0, p1

    .line 546
    .local v0, "i":I
    move v1, p2

    .line 547
    .local v1, "subIdListened":I
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v3, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;

    invoke-direct {v3, p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;-><init>(Lcom/mediatek/wfo/impl/WifiPdnHandler;I)V

    aput-object v3, v2, p1

    .line 567
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, p1

    return-object v2
.end method

.method private getSubId(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .line 1267
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1268
    .local v0, "subIds":[I
    const/4 v1, -0x1

    .line 1269
    .local v1, "subId":I
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 1270
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 1272
    :cond_0
    return v1
.end method

.method public static getUeWlanMacAddr()Ljava/lang/String;
    .locals 1

    .line 1666
    sget-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    return-object v0
.end method

.method private handleAirplaneMode()V
    .locals 4

    .line 438
    const/4 v0, 0x0

    .line 440
    .local v0, "isAirplaneModeOn":Z
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getAirplaneModeFromSettings()Z

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 443
    goto :goto_0

    .line 441
    :catch_0
    move-exception v1

    .line 442
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "WifiPdnHandler"

    const-string v3, "Can not get AIRPLANE_MODE_ON from provider."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAirplaneMode mIsAirplaneModeOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 447
    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eq v1, v0, :cond_0

    .line 448
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 449
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    .line 451
    :cond_0
    return-void
.end method

.method private handleRetry(ILandroid/os/AsyncResult;)V
    .locals 2
    .param p1, "msgId"    # I
    .param p2, "result"    # Landroid/os/AsyncResult;

    .line 467
    invoke-virtual {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    return-void

    .line 471
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 472
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 474
    :cond_1
    return-void
.end method

.method private handleWifiDefferOff(Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;I)V
    .locals 6
    .param p1, "source"    # Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;
    .param p2, "state"    # I

    .line 846
    sget-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$5;->$SwitchMap$com$mediatek$wfo$impl$WifiPdnHandler$WifiLockSource:[I

    invoke-virtual {p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "Warning: mWifiLockCount: "

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_6

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 886
    :cond_0
    const/16 v0, 0x26ac

    if-ne p2, v0, :cond_2

    .line 887
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    if-nez v0, :cond_a

    .line 888
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 889
    iput-boolean v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    goto/16 :goto_0

    .line 891
    :cond_1
    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->broadcastWfcStatusIntent(I)V

    goto/16 :goto_0

    .line 894
    :cond_2
    if-ne p2, v4, :cond_4

    .line 896
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    if-eqz v0, :cond_3

    .line 897
    iput-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    .line 898
    :cond_3
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    if-eqz v0, :cond_a

    .line 899
    iput-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    .line 900
    const-string v0, "Wi-Fi fwk automaticlly disable defer Wi-Fi off process due to timeout"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 901
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_a

    .line 902
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 903
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mStaStateCallback:Landroid/net/wifi/WifiManager$StaStateCallback;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->unregisterStaStateCallback(Landroid/net/wifi/WifiManager$StaStateCallback;)V

    .line 904
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    .line 905
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    if-lez v0, :cond_a

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 910
    :cond_4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_a

    .line 912
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    if-nez v0, :cond_a

    .line 913
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 914
    invoke-direct {p0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->broadcastWfcStatusIntent(I)V

    .line 915
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_5

    .line 916
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 917
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    .line 918
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mStaStateCallback:Landroid/net/wifi/WifiManager$StaStateCallback;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiManager;->registerStaStateCallback(Landroid/net/wifi/WifiManager$StaStateCallback;Landroid/os/Handler;)V

    .line 920
    :cond_5
    iput-boolean v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    goto :goto_0

    .line 849
    :cond_6
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    if-nez v0, :cond_8

    .line 850
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 851
    invoke-direct {p0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->broadcastWfcStatusIntent(I)V

    .line 852
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_7

    .line 853
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 854
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    .line 855
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mStaStateCallback:Landroid/net/wifi/WifiManager$StaStateCallback;

    invoke-virtual {v0, v5, p0}, Landroid/net/wifi/WifiManager;->registerStaStateCallback(Landroid/net/wifi/WifiManager$StaStateCallback;Landroid/os/Handler;)V

    .line 857
    :cond_7
    iput-boolean v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    .line 861
    :cond_8
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    if-eqz v0, :cond_9

    .line 862
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v0

    if-nez v0, :cond_9

    .line 863
    iput-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    .line 864
    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->broadcastWfcStatusIntent(I)V

    .line 868
    :cond_9
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    if-eqz v0, :cond_a

    .line 869
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v0

    if-nez v0, :cond_a

    .line 870
    iput-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    .line 871
    invoke-direct {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->broadcastWfcStatusIntent(I)V

    .line 872
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_a

    .line 873
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 874
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mStaStateCallback:Landroid/net/wifi/WifiManager$StaStateCallback;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->unregisterStaStateCallback(Landroid/net/wifi/WifiManager$StaStateCallback;)V

    .line 875
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    .line 876
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    if-lez v0, :cond_a

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 929
    :cond_a
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new handleWifiDefferOff(): WifiLockSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mHasWiFiDisabledPending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isWifiDeferOffNeeded(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mDeferredNotificationToWifi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 929
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 936
    return-void
.end method

.method private handleWifiStateChange(I)V
    .locals 4
    .param p1, "wifiState"    # I

    .line 401
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 402
    const-string v0, "Unexpected error, mWifiManager is null!"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 403
    const/16 v0, 0x3f5

    invoke-virtual {p0, v0, p1, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 404
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 405
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    monitor-exit v2

    .line 407
    return-void

    .line 406
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 410
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWifiStateChange wifiState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 413
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getAirplaneModeFromSettings()Z

    move-result v0

    .line 414
    .local v0, "isAirplaneModeOn":Z
    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eq v2, v0, :cond_1

    .line 415
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 416
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    .line 417
    const-string v2, "handleWifiStateChange change due to airplane mode change"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 421
    .end local v0    # "isAirplaneModeOn":Z
    :cond_1
    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "WifiPdnHandler"

    const-string v3, "Can not get AIRPLANE_MODE_ON from provider."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    sget-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->WIFI_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleWifiDefferOff(Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;I)V

    .line 424
    const/16 v0, 0x26ac

    if-ne p1, v0, :cond_2

    .line 425
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 426
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    goto :goto_1

    .line 428
    :cond_2
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 430
    .local v0, "isWifiEnabled":Z
    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    if-eq v0, v1, :cond_3

    .line 431
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 432
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 435
    .end local v0    # "isWifiEnabled":Z
    :cond_3
    :goto_1
    return-void
.end method

.method private initWifiManager()V
    .locals 4

    .line 686
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 687
    return-void

    .line 690
    :cond_0
    const-string v0, "WifiPdnHandler"

    const-string v1, "initWifiManager."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-static {}, Landroid/os/storage/StorageManager;->inCryptKeeperBounce()Z

    move-result v0

    if-nez v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 696
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 697
    .local v0, "isWifiEnabled":Z
    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    if-eq v0, v2, :cond_2

    .line 698
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 699
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 701
    :cond_2
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v3, "WifiOffloadService-Wifi Lock"

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 702
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v2, :cond_3

    .line 703
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 705
    .end local v0    # "isWifiEnabled":Z
    :cond_3
    goto :goto_0

    .line 706
    :cond_4
    const-string v0, "WifiManager null"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 707
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 708
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 709
    const/16 v0, 0x3f0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 710
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 711
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    monitor-exit v1

    .line 714
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 712
    .restart local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private initialize()V
    .locals 4

    .line 648
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->initWifiManager()V

    .line 650
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 651
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 652
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {v1, v2}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;-><init>(Landroid/net/ConnectivityManager;)V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    .line 653
    new-instance v1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {v1, v2, p0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPacketKeepAliveProcessor:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    .line 656
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiPdnExisted:[Z

    .line 657
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mModemReqWifiLock:[Z

    .line 659
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRatType:[I

    .line 661
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->initialize(I)V

    .line 663
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "airplane_mode_on"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 666
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 676
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->registerForBroadcast()V

    .line 677
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->registerIndication()V

    .line 679
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setupCallbacksForWifiStatus()V

    .line 682
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 683
    return-void
.end method

.method private isAirPlaneMode()Z
    .locals 3

    .line 1257
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1258
    const-string v0, "WifiPdnHandler"

    const-string v2, "isAirPlaneMode: no context!"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    return v1

    .line 1261
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v0, v1

    .line 1263
    .local v0, "isAirPlaneMode":Z
    return v0
.end method

.method private isEccInProgress()Z
    .locals 3

    .line 1752
    const/4 v0, 0x0

    .line 1753
    .local v0, "isInEcc":Z
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 1754
    .local v1, "tm":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_0

    .line 1755
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInEmergencyCall()Z

    move-result v0

    .line 1757
    :cond_0
    return v0
.end method

.method private isModemReqWifiLock()Z
    .locals 3

    .line 1594
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-ge v0, v1, :cond_1

    .line 1595
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mModemReqWifiLock:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 1596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isModemReqWifiLock: modem ask WiFi lock on SIM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1597
    const/4 v1, 0x1

    return v1

    .line 1594
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1600
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isWifiDeferOffNeeded()Z
    .locals 1

    .line 833
    invoke-virtual {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiPdnExisted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isModemReqWifiLock()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private maskString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 1774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1775
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1776
    return-object p1

    .line 1778
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1779
    .local v1, "maskLength":I
    const-string v2, "*"

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    .line 1780
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1781
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1783
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1784
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1786
    .end local v3    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private messageToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 477
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 518
    :pswitch_0
    const-string v0, "RESPONSE_SET_WIFI_PING_RESULT"

    return-object v0

    .line 516
    :pswitch_1
    const-string v0, "RESPONSE_SET_NATT_KEEP_ALIVE_STATUS"

    return-object v0

    .line 514
    :pswitch_2
    const-string v0, "RESPONSE_SET_WIFI_IP_ADDR"

    return-object v0

    .line 512
    :pswitch_3
    const-string v0, "RESPONSE_SET_WIFI_ASSOC"

    return-object v0

    .line 510
    :pswitch_4
    const-string v0, "RESPONSE_SET_WIFI_SIGNAL_LEVEL"

    return-object v0

    .line 508
    :pswitch_5
    const-string v0, "RESPONSE_SET_WIFI_ENABLED"

    return-object v0

    .line 506
    :pswitch_6
    const-string v0, "EVENT_ON_WIFI_LOCK"

    return-object v0

    .line 520
    :pswitch_7
    const-string v0, "EVENT_HANDLE_AIRPLANE_MODE"

    return-object v0

    .line 502
    :pswitch_8
    const-string v0, "EVENT_SET_WIFI_PING_RESULT"

    return-object v0

    .line 504
    :pswitch_9
    const-string v0, "EVENT_ON_WIFI_PING_REQUEST"

    return-object v0

    .line 496
    :pswitch_a
    const-string v0, "EVENT_ON_NATT_KEEP_ALIVE_CHANGED"

    return-object v0

    .line 494
    :pswitch_b
    const-string v0, "EVENT_ON_WIFI_PDN_ACTIVATE"

    return-object v0

    .line 492
    :pswitch_c
    const-string v0, "EVENT_ON_WIFI_MONITORING_THRESHOLD_CHANGED"

    return-object v0

    .line 532
    :pswitch_d
    const-string v0, "EVENT_WIFI_STATE_CHANGE"

    return-object v0

    .line 530
    :pswitch_e
    const-string v0, "EVENT_WIFI_SCAN_AVAILABLE"

    return-object v0

    .line 528
    :pswitch_f
    const-string v0, "EVENT_RETRY_UPDATE_LAST_RSSI"

    return-object v0

    .line 526
    :pswitch_10
    const-string v0, "EVENT_RETRY_CHECK_IF_START_WIFI_SCAN"

    return-object v0

    .line 524
    :pswitch_11
    const-string v0, "EVENT_RETRY_UPDATE_WIFI_CONNTECTED_INFO"

    return-object v0

    .line 522
    :pswitch_12
    const-string v0, "EVENT_RETRY_INIT"

    return-object v0

    .line 500
    :pswitch_13
    const-string v0, "EVENT_SET_NATT_STATUS"

    return-object v0

    .line 498
    :pswitch_14
    const-string v0, "EVENT_WIFI_SCAN"

    return-object v0

    .line 490
    :pswitch_15
    const-string v0, "EVENT_RADIO_AVAILABLE"

    return-object v0

    .line 488
    :pswitch_16
    const-string v0, "EVENT_SET_WIFI_IP_ADDR"

    return-object v0

    .line 486
    :pswitch_17
    const-string v0, "EVENT_SET_WIFI_ASSOC"

    return-object v0

    .line 484
    :pswitch_18
    const-string v0, "EVENT_SET_WIFI_ENABLED"

    return-object v0

    .line 482
    :pswitch_19
    const-string v0, "EVENT_SET_WIFI_SIGNAL_STRENGTH"

    return-object v0

    .line 480
    :pswitch_1a
    const-string v0, "EVENT_WIFI_NETWORK_STATE_CHANGE"

    return-object v0

    .line 534
    :cond_0
    const-string v0, "EVENT_INITIALIZE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x47e
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4b0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onNattKeepAliveChanged(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 939
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 940
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 942
    .local v1, "result":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPacketKeepAliveProcessor:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->handleKeepAliveChanged([Ljava/lang/String;)V

    .line 943
    return-void
.end method

.method private onRssiMonitorRequest(II[I)V
    .locals 1
    .param p1, "simId"    # I
    .param p2, "size"    # I
    .param p3, "rssiThresholds"    # [I

    .line 1413
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->registerRssiMonitoring(II[I)V

    .line 1414
    return-void
.end method

.method private onWifiLock(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 1724
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1725
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 1727
    .local v1, "result":[Ljava/lang/String;
    const-string v2, "WifiPdnHandler"

    if-nez v1, :cond_0

    .line 1728
    const-string v3, "onWifiLock(): result is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    return-void

    .line 1731
    :cond_0
    array-length v3, v1

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 1732
    const-string v3, "onWifiLock(): Bad params"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    return-void

    .line 1737
    :cond_1
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    aget-object v6, v1, v5

    .line 1738
    .local v6, "wlanIface":Ljava/lang/String;
    aget-object v7, v1, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1739
    .local v7, "enableLock":I
    aget-object v8, v1, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1740
    .local v8, "simIdx":I
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isModemReqWifiLock()Z

    move-result v9

    .line 1741
    .local v9, "preModemWifiLockState":Z
    iget-object v10, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mModemReqWifiLock:[Z

    if-nez v7, :cond_2

    move v11, v5

    goto :goto_0

    :cond_2
    move v11, v4

    :goto_0
    aput-boolean v11, v10, v8

    .line 1742
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isModemReqWifiLock()Z

    move-result v10

    if-eq v9, v10, :cond_3

    .line 1743
    sget-object v10, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->MODEM_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    invoke-direct {p0, v10, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleWifiDefferOff(Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1748
    .end local v6    # "wlanIface":Ljava/lang/String;
    .end local v7    # "enableLock":I
    .end local v8    # "simIdx":I
    .end local v9    # "preModemWifiLockState":Z
    :cond_3
    goto :goto_1

    .line 1745
    :catch_0
    move-exception v6

    .line 1746
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onWifiLock["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  e:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1746
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private onWifiMonitoringThreshouldChanged(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 751
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 752
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 754
    .local v1, "result":[I
    const-string v2, "WifiPdnHandler"

    if-nez v1, :cond_0

    .line 755
    const-string v3, "onWifiMonitoringThreshouldChanged(): result is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    return-void

    .line 759
    :cond_0
    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move v3, v5

    .line 760
    .local v3, "enable":Z
    :cond_1
    array-length v4, v1

    .line 761
    .local v4, "length":I
    add-int/lit8 v6, v4, -0x1

    aget v6, v1, v6

    .line 763
    .local v6, "simIdx":I
    if-nez v3, :cond_2

    .line 764
    const-string v2, "Turn off RSSI monitoring"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 765
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    invoke-virtual {v2, v6}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->unregisterAllRssiMonitoring(I)V

    .line 766
    return-void

    .line 768
    :cond_2
    aget v7, v1, v5

    .line 769
    .local v7, "count":I
    add-int/lit8 v8, v7, 0x2

    add-int/2addr v8, v5

    if-ge v8, v4, :cond_3

    .line 770
    const-string v5, "onWifiMonitoringThreshouldChanged(): Bad params"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    return-void

    .line 773
    :cond_3
    const-string v2, "onWifiMonitoringThreshouldChanged: invalid SIM id"

    invoke-direct {p0, v6, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 774
    return-void

    .line 777
    :cond_4
    new-array v2, v7, [I

    .line 778
    .local v2, "rssi":[I
    const/4 v5, 0x2

    .line 779
    .local v5, "offset":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_5

    .line 780
    add-int v9, v8, v5

    aget v9, v1, v9

    aput v9, v2, v8

    .line 781
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onWifiMonitoringThreshouldChanged(): rssi = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v2, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 779
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 784
    .end local v8    # "i":I
    :cond_5
    invoke-direct {p0, v6, v7, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onRssiMonitorRequest(II[I)V

    .line 787
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateLastRssi()V

    .line 788
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiSignalLevel()V

    .line 789
    return-void
.end method

.method private onWifiPdnActivate(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 793
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 794
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 795
    .local v1, "result":[I
    const/4 v2, 0x0

    .line 797
    .local v2, "preWifiPdnExited":Z
    const-string v3, "WifiPdnHandler"

    if-nez v1, :cond_0

    .line 798
    const-string v4, "onWifiPdnActivate(): result is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return-void

    .line 801
    :cond_0
    array-length v4, v1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 802
    const-string v4, "onWifiPdnActivate(): Bad params"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    return-void

    .line 805
    :cond_1
    const/4 v3, 0x0

    aget v4, v1, v3

    .line 806
    .local v4, "pdnCount":I
    const/4 v6, 0x1

    aget v7, v1, v6

    .line 808
    .local v7, "simIdx":I
    const-string v8, "onWifiPdnActivate(): invalid SIM id"

    invoke-direct {p0, v7, v8}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 809
    return-void

    .line 811
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiPdnExisted()Z

    move-result v2

    .line 813
    const-string v8, "persist.vendor.mims_support"

    invoke-static {v8, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ge v8, v5, :cond_5

    .line 814
    const-string v5, "MIMS does not support, sync up pdn status to all slots."

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 815
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v8, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-ge v5, v8, :cond_4

    .line 816
    iget-object v8, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiPdnExisted:[Z

    if-lez v4, :cond_3

    move v9, v6

    goto :goto_1

    :cond_3
    move v9, v3

    :goto_1
    aput-boolean v9, v8, v5

    .line 815
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v5    # "i":I
    :cond_4
    goto :goto_3

    .line 819
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MIMS supported, update pdn status to specific slot["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 820
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiPdnExisted:[Z

    if-lez v4, :cond_6

    goto :goto_2

    :cond_6
    move v6, v3

    :goto_2
    aput-boolean v6, v5, v7

    .line 824
    :goto_3
    invoke-direct {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkIfstartWifiScan(Z)V

    .line 826
    invoke-virtual {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiPdnExisted()Z

    move-result v5

    if-eq v2, v5, :cond_7

    .line 828
    sget-object v5, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->MODEM_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    invoke-direct {p0, v5, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleWifiDefferOff(Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;I)V

    .line 830
    :cond_7
    return-void
.end method

.method private onWifiPingRequest(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1699
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1700
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1702
    .local v1, "result":[I
    const-string v2, "WifiPdnHandler"

    if-nez v1, :cond_0

    .line 1703
    const-string v3, "onWifiPingRequest(): result is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    return-void

    .line 1706
    :cond_0
    array-length v3, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 1707
    const-string v3, "onWifiPingRequest(): Bad params"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    return-void

    .line 1710
    :cond_1
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 1711
    .local v2, "rat":I
    const/4 v3, 0x1

    aget v3, v1, v3

    .line 1713
    .local v3, "simIdx":I
    const-string v4, "onWifiPingRequest(): invalid SIM id"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1714
    return-void

    .line 1717
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWifiPingRequest: rat = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", simIdx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1718
    new-instance v4, Lcom/mediatek/wfo/impl/PingDns;

    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3, v2, p0}, Lcom/mediatek/wfo/impl/PingDns;-><init>(Landroid/content/Context;IILandroid/os/Handler;)V

    iput-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPingDns:Lcom/mediatek/wfo/impl/PingDns;

    .line 1719
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPingDns:Lcom/mediatek/wfo/impl/PingDns;

    invoke-virtual {v4}, Lcom/mediatek/wfo/impl/PingDns;->pingWifiGateway()V

    .line 1720
    return-void
.end method

.method private registerForBroadcast()V
    .locals 3

    .line 721
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 722
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 723
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 724
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 725
    const-string v1, "register for radio state changed"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 726
    const-string v1, "com.mediatek.intent.action.RADIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 727
    const-string v1, "wifi_scan_available"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 728
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 729
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 730
    return-void
.end method

.method private registerIndication()V
    .locals 4

    .line 733
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-ge v0, v1, :cond_0

    .line 734
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x44d

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerRssiThresholdChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 736
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x44e

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiPdnActivated(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 738
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x44f

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerNattKeepAliveChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 740
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x47e

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiPingRequest(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 743
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x481

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiLock(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 733
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 746
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private setNattKeepAliveStatus(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 1349
    const/16 v0, 0x4b4

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1350
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    .line 1351
    .local v9, "config":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    .line 1352
    invoke-virtual {v9}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->isEnabled()Z

    move-result v3

    .line 1353
    invoke-virtual {v9}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->getSrcIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->getSrcPort()I

    move-result v5

    .line 1354
    invoke-virtual {v9}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->getDstIp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->getDstPort()I

    move-result v7

    .line 1351
    const-string v2, "wlan0"

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/wfo/ril/MwiRIL;->setNattKeepAliveStatus(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ILandroid/os/Message;)V

    .line 1355
    return-void
.end method

.method private setWifiAssoc()V
    .locals 11

    .line 1287
    const/16 v0, 0x4b2

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1288
    .local v0, "result":Landroid/os/Message;
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    .line 1289
    .local v1, "mtu":I
    if-nez v1, :cond_0

    .line 1291
    const/16 v1, 0x5dc

    move v9, v1

    goto :goto_0

    .line 1289
    :cond_0
    move v9, v1

    .line 1293
    .end local v1    # "mtu":I
    .local v9, "mtu":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiAssoc() ifName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " associated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ssid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    .line 1294
    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " apMac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mtu = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1293
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1295
    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    .line 1296
    .local v1, "isWifiConnected":Z
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1297
    const/4 v1, 0x0

    move v10, v1

    goto :goto_1

    .line 1296
    :cond_1
    move v10, v1

    .line 1299
    .end local v1    # "isWifiConnected":Z
    .local v10, "isWifiConnected":Z
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    sget-object v7, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    const-string v2, "wlan0"

    move v3, v10

    move v6, v9

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiAssociated(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 1302
    return-void
.end method

.method private setWifiEnabled()V
    .locals 11

    .line 1157
    const/16 v0, 0x4b0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1158
    .local v0, "result":Landroid/os/Message;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isEccInProgress()Z

    move-result v1

    .line 1159
    .local v1, "isInEcc":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiEnabled(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsAirplaneModeOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isEccInProgress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1163
    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 1164
    .local v2, "wifiEnable":Z
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->allowWfcInAirplaneMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1165
    const-string v3, "allowWfcInAirplaneMode: false"

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1166
    const/4 v2, 0x0

    .line 1169
    :cond_0
    const/4 v9, 0x0

    const-string v3, "persist.vendor.mtk.wfc.enable"

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v10, 0x1

    if-lt v3, v10, :cond_1

    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 1170
    move v8, v10

    goto :goto_0

    :cond_1
    move v8, v9

    .line 1171
    .local v8, "bCause":Z
    :goto_0
    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    const/4 v6, 0x1

    move-object v3, p0

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->generateWifiEnableCause(ZZZZZ)I

    move-result v3

    .line 1173
    .local v3, "cause":I
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v4

    .line 1174
    if-eqz v2, :cond_2

    move v9, v10

    .line 1173
    :cond_2
    const-string v5, "wlan0"

    invoke-virtual {v4, v5, v9, v3, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiEnabled(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1175
    return-void
.end method

.method private setWifiEnabledWithSyncAPMode()V
    .locals 11

    .line 1178
    const/16 v0, 0x4b0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1179
    .local v0, "result":Landroid/os/Message;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isEccInProgress()Z

    move-result v1

    .line 1182
    .local v1, "isInEcc":Z
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getAirplaneModeFromSettings()Z

    move-result v2

    .line 1183
    .local v2, "isAirplaneModeOn":Z
    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eq v3, v2, :cond_0

    .line 1184
    iput-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 1185
    const-string v3, "setWifiEnabledWithSyncAPMode(): update mIsAirplaneModeOn from settings"

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1189
    .end local v2    # "isAirplaneModeOn":Z
    :cond_0
    goto :goto_0

    .line 1187
    :catch_0
    move-exception v2

    .line 1188
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "WifiPdnHandler"

    const-string v4, "Can not get AIRPLANE_MODE_ON from provider."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiEnabledWithSyncAPMode(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsAirplaneModeOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isEccInProgress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1195
    const/4 v2, 0x0

    const-string v3, "persist.vendor.mtk.wfc.enable"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 1196
    move v10, v4

    goto :goto_1

    :cond_1
    move v10, v2

    .line 1198
    .local v10, "bCause":Z
    :goto_1
    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    const/4 v8, 0x1

    iget-boolean v9, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->generateWifiEnableCause(ZZZZZ)I

    move-result v2

    .line 1200
    .local v2, "cause":I
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v3

    .line 1201
    iget-boolean v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 1200
    const-string v5, "wlan0"

    invoke-virtual {v3, v5, v4, v2, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiEnabled(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1202
    return-void
.end method

.method private setWifiIpAddress()V
    .locals 14

    .line 1305
    const/16 v0, 0x4b3

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1306
    .local v0, "result":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiIpAddr() ifName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ipv4Addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ipv6Addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    .line 1307
    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ipv4PrefixLen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ipv6PrefixLen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1306
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1310
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1311
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    .line 1312
    .local v12, "dnsCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v1

    .line 1314
    .local v13, "dnsServers":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 1315
    .local v2, "address":Ljava/net/InetAddress;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1316
    const-string v3, ","

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    :cond_0
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 1319
    .local v3, "dnsServerAddress":Ljava/lang/String;
    const-string v4, "\""

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiIpAddress(): dnsServerAddress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1323
    .end local v2    # "address":Ljava/net/InetAddress;
    goto :goto_0

    .line 1325
    .end local v3    # "dnsServerAddress":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    iget v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    iget v6, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    iget-object v7, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Gateway:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Gateway:Ljava/lang/String;

    .line 1332
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1325
    const-string v2, "wlan0"

    move v9, v12

    move-object v11, v0

    invoke-virtual/range {v1 .. v11}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiIpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 1333
    .end local v12    # "dnsCount":I
    .end local v13    # "dnsServers":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 1334
    :cond_2
    const-string v1, "WifiPdnHandler"

    const-string v2, "setWifiIpAddress(): mDnsServers = null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    iget v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    iget v6, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    iget-object v7, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Gateway:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Gateway:Ljava/lang/String;

    const/4 v9, 0x0

    const-string v2, "wlan0"

    const-string v10, "\"\""

    move-object v11, v0

    invoke-virtual/range {v1 .. v11}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiIpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 1346
    :goto_1
    return-void
.end method

.method private setWifiPingResult(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1358
    const/16 v0, 0x4b5

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1362
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/wfo/impl/PingData;

    .line 1363
    .local v1, "data":Lcom/mediatek/wfo/impl/PingData;
    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/PingData;->getPingLatency()D

    move-result-wide v2

    double-to-int v2, v2

    .line 1364
    .local v2, "latency":I
    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/PingData;->getPacketLoss()I

    move-result v3

    .line 1365
    .local v3, "pktLoss":I
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 1366
    .local v4, "simIdx":I
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 1367
    .local v5, "rat":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWifiPingResult() latency: = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", packetLost: = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1369
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v6, v6, v4

    invoke-virtual {v6, v5, v2, v3, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiPingResult(IIILandroid/os/Message;)V

    .line 1370
    return-void
.end method

.method private setWifiSignalLevel()V
    .locals 4

    .line 1281
    const/16 v0, 0x4b1

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1282
    .local v0, "result":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiSignalLevel(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1283
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    const/16 v3, 0x3c

    invoke-virtual {v1, v2, v3, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiSignalLevel(IILandroid/os/Message;)V

    .line 1284
    return-void
.end method

.method private setWifiUeMac()V
    .locals 4

    .line 1373
    const/16 v0, 0x4b6

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1374
    .local v0, "result":Landroid/os/Message;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    sget-object v2, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    const-string v3, "wlan0"

    invoke-virtual {v1, v3, v2, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setWfcConfig_WifiUeMac(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1375
    return-void
.end method

.method private setupCallbacksForWifiStatus()V
    .locals 2

    .line 1420
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 1421
    const-string v0, "Unexpected error, mConnectivityManager = null"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1422
    return-void

    .line 1425
    :cond_0
    new-instance v1, Lcom/mediatek/wfo/impl/WifiPdnHandler$4;

    invoke-direct {v1, p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler$4;-><init>(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1573
    return-void
.end method

.method private updateLastRssi()V
    .locals 3

    .line 1604
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 1605
    const-string v0, "WifiPdnHandler"

    const-string v1, "updateLastRssi(): WifiManager null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    const/16 v0, 0x3f3

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1607
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1608
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1609
    monitor-exit v2

    .line 1610
    return-void

    .line 1609
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1613
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1614
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_1

    .line 1615
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    .line 1617
    :cond_1
    return-void
.end method

.method private updateSsidToHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "ssid"    # Ljava/lang/String;

    .line 1620
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1621
    const-string v0, ""

    return-object v0

    .line 1624
    :cond_0
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1625
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1628
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1629
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1630
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 1631
    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, v0, v3

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "%02x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1635
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private updateWifiConnectedInfo(I)V
    .locals 28
    .param p1, "isConnected"    # I

    .line 946
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, 0x0

    .line 947
    .local v3, "changed":Z
    const/4 v4, 0x0

    .line 949
    .local v4, "ipAddrChanged":Z
    const/4 v0, 0x0

    if-nez v2, :cond_1

    .line 950
    iget-object v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    if-eqz v5, :cond_0

    .line 951
    invoke-virtual {v5, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->updatedWifiConnectedStatus(Z)V

    .line 954
    :cond_0
    iget-boolean v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    if-eqz v5, :cond_20

    .line 955
    iput-boolean v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    .line 956
    const-string v5, ""

    iput-object v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    .line 957
    const-string v5, ""

    iput-object v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    .line 958
    const-string v5, ""

    iput-object v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    .line 959
    const-string v5, ""

    iput-object v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Gateway:Ljava/lang/String;

    .line 960
    const-string v5, ""

    iput-object v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Gateway:Ljava/lang/String;

    .line 961
    const/4 v5, -0x1

    iput v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    .line 962
    iput v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    .line 963
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    .line 964
    const-string v5, ""

    iput-object v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    .line 965
    const-string v5, ""

    iput-object v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    .line 966
    iput v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    .line 967
    const/4 v3, 0x1

    .line 968
    const/4 v4, 0x1

    goto/16 :goto_12

    .line 971
    :cond_1
    iget-object v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 972
    invoke-virtual {v5, v6}, Lcom/mediatek/wfo/impl/WfcHandler;->updatedWifiConnectedStatus(Z)V

    .line 975
    :cond_2
    const-string v5, ""

    .local v5, "wifiApMac":Ljava/lang/String;
    const-string v7, ""

    .local v7, "ipv4Address":Ljava/lang/String;
    const-string v8, ""

    .local v8, "ipv6Address":Ljava/lang/String;
    const-string v9, ""

    .local v9, "ifName":Ljava/lang/String;
    const-string v10, ""

    .line 976
    .local v10, "ssid":Ljava/lang/String;
    const/4 v11, -0x1

    .line 977
    .local v11, "ipv4PrefixLen":I
    const/4 v12, -0x1

    .line 978
    .local v12, "ipv6PrefixLen":I
    const/4 v13, 0x0

    .line 979
    .local v13, "routeIpv4":Landroid/net/RouteInfo;
    const/4 v14, 0x0

    .line 980
    .local v14, "routeIpv6":Landroid/net/RouteInfo;
    const-string v15, ""

    .line 981
    .local v15, "ipv4Gateway":Ljava/lang/String;
    const-string v16, ""

    .line 983
    .local v16, "ipv6Gateway":Ljava/lang/String;
    const/16 v17, 0x0

    .line 984
    .local v17, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    const/16 v18, 0x0

    .line 985
    .local v18, "mtu":I
    iput-boolean v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    .line 989
    iget-boolean v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 990
    iput-boolean v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 991
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 995
    :cond_3
    const/4 v6, 0x0

    .line 996
    .local v6, "wifiInfo":Landroid/net/wifi/WifiInfo;
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_4

    .line 997
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    move/from16 v19, v3

    move/from16 v20, v4

    goto :goto_0

    .line 999
    :cond_4
    const/16 v0, 0x3f1

    move/from16 v19, v3

    move/from16 v20, v4

    const/4 v3, 0x0

    .end local v3    # "changed":Z
    .end local v4    # "ipAddrChanged":Z
    .local v19, "changed":Z
    .local v20, "ipAddrChanged":Z
    invoke-virtual {v1, v0, v2, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 1001
    .local v4, "msg":Landroid/os/Message;
    iget-object v3, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1002
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    .end local v4    # "msg":Landroid/os/Message;
    :goto_0
    if-eqz v6, :cond_9

    .line 1007
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    .line 1008
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 1009
    .local v0, "tempSsid":Ljava/lang/String;
    const-string v3, "<unknown ssid>"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1010
    const-string v0, ""

    .line 1011
    const-string v3, "updateWifiConnectedInfo: <unknown ssid>"

    invoke-virtual {v1, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1013
    :cond_5
    invoke-direct {v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateSsidToHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1015
    iget-object v3, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    .line 1016
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v5, :cond_9

    .line 1017
    :cond_6
    if-nez v5, :cond_7

    const-string v3, ""

    goto :goto_1

    :cond_7
    move-object v3, v5

    :goto_1
    iput-object v3, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    .line 1018
    const/4 v3, 0x1

    .line 1019
    .end local v19    # "changed":Z
    .restart local v3    # "changed":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v0

    .end local v0    # "tempSsid":Ljava/lang/String;
    .local v21, "tempSsid":Ljava/lang/String;
    const-string v0, "updateWifiConnectedInfo(): mWifiApMac = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    move/from16 v19, v3

    goto :goto_2

    .line 1015
    .end local v3    # "changed":Z
    .end local v21    # "tempSsid":Ljava/lang/String;
    .restart local v0    # "tempSsid":Ljava/lang/String;
    .restart local v19    # "changed":Z
    :cond_8
    move-object/from16 v21, v0

    .line 1024
    .end local v0    # "tempSsid":Ljava/lang/String;
    :cond_9
    :goto_2
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    array-length v3, v0

    move/from16 v2, v18

    const/4 v4, 0x0

    move-object/from16 v26, v13

    move-object v13, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v26

    move-object/from16 v27, v17

    move-object/from16 v17, v14

    move-object/from16 v14, v27

    .end local v18    # "mtu":I
    .local v2, "mtu":I
    .local v9, "ipv6Gateway":Ljava/lang/String;
    .local v13, "ifName":Ljava/lang/String;
    .local v14, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local v16, "routeIpv4":Landroid/net/RouteInfo;
    .local v17, "routeIpv6":Landroid/net/RouteInfo;
    :goto_3
    if-ge v4, v3, :cond_14

    move/from16 v21, v3

    aget-object v3, v0, v4

    .line 1025
    .local v3, "nw":Landroid/net/Network;
    move-object/from16 v22, v0

    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    .line 1028
    .local v0, "prop":Landroid/net/LinkProperties;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_13

    .line 1029
    move-object/from16 v18, v3

    .end local v3    # "nw":Landroid/net/Network;
    .local v18, "nw":Landroid/net/Network;
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v5

    .end local v5    # "wifiApMac":Ljava/lang/String;
    .local v23, "wifiApMac":Ljava/lang/String;
    const-string v5, "wlan"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1030
    move-object/from16 v25, v6

    goto/16 :goto_a

    .line 1034
    :cond_a
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    .line 1035
    .local v5, "linkAddr":Landroid/net/LinkAddress;
    move-object/from16 v24, v3

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 1036
    .local v3, "address":Ljava/net/InetAddress;
    move-object/from16 v25, v6

    .end local v6    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .local v25, "wifiInfo":Landroid/net/wifi/WifiInfo;
    instance-of v6, v3, Ljava/net/Inet4Address;

    if-eqz v6, :cond_b

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_b

    .line 1037
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 1038
    .end local v7    # "ipv4Address":Ljava/lang/String;
    .local v6, "ipv4Address":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v7

    move v11, v7

    move-object v7, v6

    .end local v11    # "ipv4PrefixLen":I
    .local v7, "ipv4PrefixLen":I
    goto :goto_5

    .line 1039
    .end local v6    # "ipv4Address":Ljava/lang/String;
    .local v7, "ipv4Address":Ljava/lang/String;
    .restart local v11    # "ipv4PrefixLen":I
    :cond_b
    instance-of v6, v3, Ljava/net/Inet6Address;

    if-eqz v6, :cond_c

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v6

    if-nez v6, :cond_c

    .line 1040
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_c

    .line 1043
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 1044
    .end local v8    # "ipv6Address":Ljava/lang/String;
    .local v6, "ipv6Address":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v8

    move v12, v8

    move-object v8, v6

    .line 1051
    .end local v3    # "address":Ljava/net/InetAddress;
    .end local v5    # "linkAddr":Landroid/net/LinkAddress;
    .end local v6    # "ipv6Address":Ljava/lang/String;
    .restart local v8    # "ipv6Address":Ljava/lang/String;
    :cond_c
    :goto_5
    move-object/from16 v3, v24

    move-object/from16 v6, v25

    goto :goto_4

    .line 1053
    .end local v25    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .local v6, "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_d
    move-object/from16 v25, v6

    .end local v6    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v25    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v3

    .line 1054
    .end local v14    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local v3, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getMtu()I

    move-result v2

    .line 1056
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 1057
    .local v6, "routeInfo":Landroid/net/RouteInfo;
    invoke-virtual {v6}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 1058
    move-object v14, v6

    .line 1059
    .end local v16    # "routeIpv4":Landroid/net/RouteInfo;
    .local v14, "routeIpv4":Landroid/net/RouteInfo;
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v16

    if-eqz v16, :cond_e

    .line 1060
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    goto :goto_7

    :cond_e
    const-string v16, ""

    :goto_7
    move-object/from16 v15, v16

    move-object/from16 v16, v14

    goto :goto_9

    .line 1061
    .end local v14    # "routeIpv4":Landroid/net/RouteInfo;
    .restart local v16    # "routeIpv4":Landroid/net/RouteInfo;
    :cond_f
    invoke-virtual {v6}, Landroid/net/RouteInfo;->isIPv6Default()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 1062
    move-object v14, v6

    .line 1063
    .end local v17    # "routeIpv6":Landroid/net/RouteInfo;
    .local v14, "routeIpv6":Landroid/net/RouteInfo;
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v17

    if-eqz v17, :cond_10

    .line 1064
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v17

    goto :goto_8

    :cond_10
    const-string v17, ""

    :goto_8
    move-object/from16 v9, v17

    move-object/from16 v17, v14

    .line 1067
    .end local v6    # "routeInfo":Landroid/net/RouteInfo;
    .end local v14    # "routeIpv6":Landroid/net/RouteInfo;
    .restart local v17    # "routeIpv6":Landroid/net/RouteInfo;
    :cond_11
    :goto_9
    goto :goto_6

    .line 1069
    :cond_12
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    move-object v14, v3

    move-object v13, v5

    .end local v13    # "ifName":Ljava/lang/String;
    .local v5, "ifName":Ljava/lang/String;
    goto :goto_a

    .line 1028
    .end local v18    # "nw":Landroid/net/Network;
    .end local v23    # "wifiApMac":Ljava/lang/String;
    .end local v25    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .local v3, "nw":Landroid/net/Network;
    .local v5, "wifiApMac":Ljava/lang/String;
    .local v6, "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v13    # "ifName":Ljava/lang/String;
    .local v14, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :cond_13
    move-object/from16 v18, v3

    move-object/from16 v23, v5

    move-object/from16 v25, v6

    .line 1024
    .end local v0    # "prop":Landroid/net/LinkProperties;
    .end local v3    # "nw":Landroid/net/Network;
    .end local v5    # "wifiApMac":Ljava/lang/String;
    .end local v6    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v23    # "wifiApMac":Ljava/lang/String;
    .restart local v25    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_a
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v21

    move-object/from16 v0, v22

    move-object/from16 v5, v23

    move-object/from16 v6, v25

    goto/16 :goto_3

    .line 1072
    .end local v23    # "wifiApMac":Ljava/lang/String;
    .end local v25    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v5    # "wifiApMac":Ljava/lang/String;
    .restart local v6    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_14
    move-object/from16 v23, v5

    move-object/from16 v25, v6

    .end local v5    # "wifiApMac":Ljava/lang/String;
    .end local v6    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v23    # "wifiApMac":Ljava/lang/String;
    .restart local v25    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1073
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, ""

    goto :goto_b

    :cond_15
    move-object v0, v7

    :goto_b
    iput-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    .line 1074
    iput v11, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    .line 1075
    iput-object v15, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Gateway:Ljava/lang/String;

    .line 1076
    const/4 v4, 0x1

    .line 1077
    .end local v20    # "ipAddrChanged":Z
    .local v4, "ipAddrChanged":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWifiConnectedInfo(): mWifiIpv4Address = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    .line 1078
    invoke-direct {v1, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1077
    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    goto :goto_c

    .line 1072
    .end local v4    # "ipAddrChanged":Z
    .restart local v20    # "ipAddrChanged":Z
    :cond_16
    move/from16 v4, v20

    .line 1080
    .end local v20    # "ipAddrChanged":Z
    .restart local v4    # "ipAddrChanged":Z
    :goto_c
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1081
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, ""

    goto :goto_d

    :cond_17
    move-object v0, v8

    :goto_d
    iput-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    .line 1082
    iput v12, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    .line 1083
    iput-object v9, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Gateway:Ljava/lang/String;

    .line 1084
    const/4 v4, 0x1

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWifiConnectedInfo(): mWifiIpv6Address = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    .line 1086
    invoke-direct {v1, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1085
    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1089
    :cond_18
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1090
    if-nez v13, :cond_19

    const-string v0, ""

    goto :goto_e

    :cond_19
    move-object v0, v13

    :goto_e
    iput-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    .line 1091
    const/16 v19, 0x1

    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWifiConnectedInfo(): mIfName = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1095
    :cond_1a
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1096
    if-nez v10, :cond_1b

    const-string v0, ""

    goto :goto_f

    :cond_1b
    move-object v0, v10

    :goto_f
    iput-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    .line 1097
    const/4 v0, 0x1

    .line 1098
    .end local v19    # "changed":Z
    .local v0, "changed":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWifiConnectedInfo(): mSsid = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    move v3, v0

    goto :goto_10

    .line 1095
    .end local v0    # "changed":Z
    .restart local v19    # "changed":Z
    :cond_1c
    move/from16 v3, v19

    .line 1101
    .end local v19    # "changed":Z
    .local v3, "changed":Z
    :goto_10
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    if-nez v0, :cond_1d

    .line 1102
    iput-object v14, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    .line 1103
    const/4 v0, 0x1

    .line 1104
    .end local v4    # "ipAddrChanged":Z
    .local v0, "ipAddrChanged":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWifiConnectedInfo(): mDnsServers ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    move v4, v0

    goto :goto_11

    .line 1105
    .end local v0    # "ipAddrChanged":Z
    .restart local v4    # "ipAddrChanged":Z
    :cond_1d
    if-eqz v14, :cond_1f

    .line 1106
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v5

    .line 1107
    .local v0, "common":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v0, v14}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v4

    .line 1108
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_1e

    .line 1109
    const/4 v4, 0x1

    .line 1111
    :cond_1e
    if-eqz v4, :cond_1f

    .line 1112
    iput-object v14, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    .line 1113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWifiConnectedInfo(): mDnsServers ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1117
    .end local v0    # "common":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :cond_1f
    :goto_11
    if-ltz v2, :cond_20

    iget v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    if-eq v0, v2, :cond_20

    .line 1118
    iput v2, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    .line 1119
    const/4 v3, 0x1

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWifiConnectedInfo(): mMtu = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1125
    .end local v2    # "mtu":I
    .end local v7    # "ipv4Address":Ljava/lang/String;
    .end local v8    # "ipv6Address":Ljava/lang/String;
    .end local v9    # "ipv6Gateway":Ljava/lang/String;
    .end local v10    # "ssid":Ljava/lang/String;
    .end local v11    # "ipv4PrefixLen":I
    .end local v12    # "ipv6PrefixLen":I
    .end local v13    # "ifName":Ljava/lang/String;
    .end local v14    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v15    # "ipv4Gateway":Ljava/lang/String;
    .end local v16    # "routeIpv4":Landroid/net/RouteInfo;
    .end local v17    # "routeIpv6":Landroid/net/RouteInfo;
    .end local v23    # "wifiApMac":Ljava/lang/String;
    .end local v25    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_20
    :goto_12
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkIfstartWifiScan(Z)V

    .line 1127
    if-eqz v3, :cond_21

    .line 1128
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiAssoc()V

    .line 1131
    :cond_21
    if-eqz v4, :cond_22

    .line 1132
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiIpAddress()V

    .line 1134
    :cond_22
    return-void

    .line 1003
    .end local v3    # "changed":Z
    .local v4, "msg":Landroid/os/Message;
    .restart local v5    # "wifiApMac":Ljava/lang/String;
    .restart local v6    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v7    # "ipv4Address":Ljava/lang/String;
    .restart local v8    # "ipv6Address":Ljava/lang/String;
    .local v9, "ifName":Ljava/lang/String;
    .restart local v10    # "ssid":Ljava/lang/String;
    .restart local v11    # "ipv4PrefixLen":I
    .restart local v12    # "ipv6PrefixLen":I
    .local v13, "routeIpv4":Landroid/net/RouteInfo;
    .local v14, "routeIpv6":Landroid/net/RouteInfo;
    .restart local v15    # "ipv4Gateway":Ljava/lang/String;
    .local v16, "ipv6Gateway":Ljava/lang/String;
    .local v17, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local v18, "mtu":I
    .restart local v19    # "changed":Z
    .restart local v20    # "ipAddrChanged":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateWlanMacAddr()Ljava/lang/String;
    .locals 10

    .line 1671
    :try_start_0
    const-string v0, "wlan0"

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1672
    .local v0, "wnif":Ljava/net/NetworkInterface;
    const-string v1, ""

    if-nez v0, :cond_0

    .line 1673
    :try_start_1
    const-string v2, "updateWlanMacAddr wnif == null"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1674
    return-object v1

    .line 1676
    :cond_0
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    .line 1677
    .local v2, "macBytes":[B
    if-nez v2, :cond_1

    .line 1678
    const-string v3, "updateWlanMacAddr macBytes == null"

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1679
    return-object v1

    .line 1682
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1683
    .local v1, "res1":Ljava/lang/StringBuilder;
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_2

    aget-byte v7, v2, v5

    .line 1684
    .local v7, "b":B
    const-string v8, "%02X:"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v6, v4

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1683
    nop

    .end local v7    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1687
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 1688
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1690
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 1692
    .end local v0    # "wnif":Ljava/net/NetworkInterface;
    .end local v1    # "res1":Ljava/lang/StringBuilder;
    .end local v2    # "macBytes":[B
    :catch_0
    move-exception v0

    .line 1694
    const-string v0, "02:00:00:00:00:00"

    return-object v0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 541
    return-object p0
.end method

.method public getLastRssi()I
    .locals 1

    .line 1639
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 243
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_2

    .line 337
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 338
    .local v0, "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x3f6

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleRetry(ILandroid/os/AsyncResult;)V

    .line 339
    goto/16 :goto_2

    .line 349
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 350
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x47f

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleRetry(ILandroid/os/AsyncResult;)V

    .line 351
    goto/16 :goto_2

    .line 345
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 346
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x3ef

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleRetry(ILandroid/os/AsyncResult;)V

    .line 347
    goto/16 :goto_2

    .line 341
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 342
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x3ec

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleRetry(ILandroid/os/AsyncResult;)V

    .line 343
    goto/16 :goto_2

    .line 333
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 334
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x3eb

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleRetry(ILandroid/os/AsyncResult;)V

    .line 335
    goto/16 :goto_2

    .line 329
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 330
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x3e9

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleRetry(ILandroid/os/AsyncResult;)V

    .line 331
    goto/16 :goto_2

    .line 325
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 326
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x3ea

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleRetry(ILandroid/os/AsyncResult;)V

    .line 327
    goto/16 :goto_2

    .line 320
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onWifiLock(Landroid/os/Message;)V

    .line 321
    goto/16 :goto_2

    .line 353
    :pswitch_8
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleAirplaneMode()V

    .line 354
    goto/16 :goto_2

    .line 303
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiPingResult(Landroid/os/Message;)V

    .line 304
    goto/16 :goto_2

    .line 317
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onWifiPingRequest(Landroid/os/Message;)V

    .line 318
    goto/16 :goto_2

    .line 314
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onNattKeepAliveChanged(Landroid/os/Message;)V

    .line 315
    goto/16 :goto_2

    .line 311
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onWifiPdnActivate(Landroid/os/Message;)V

    .line 312
    goto/16 :goto_2

    .line 308
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onWifiMonitoringThreshouldChanged(Landroid/os/Message;)V

    .line 309
    goto/16 :goto_2

    .line 391
    :pswitch_e
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->initialize()V

    .line 392
    goto/16 :goto_2

    .line 275
    :pswitch_f
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiUeMac()V

    .line 276
    goto/16 :goto_2

    .line 387
    :pswitch_10
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleWifiStateChange(I)V

    .line 388
    goto/16 :goto_2

    .line 377
    :pswitch_11
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 379
    .local v2, "retryMsg":Landroid/os/Message;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->messageToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 381
    .end local v2    # "retryMsg":Landroid/os/Message;
    goto :goto_0

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 383
    monitor-exit v0

    .line 384
    goto/16 :goto_2

    .line 383
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 372
    :pswitch_12
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateLastRssi()V

    .line 373
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiSignalLevel()V

    .line 374
    goto/16 :goto_2

    .line 366
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 367
    .local v0, "scanImmediately":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry checkIfstartWifiScan, scanImmediately: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiPdnHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkIfstartWifiScan(Z)V

    .line 369
    goto/16 :goto_2

    .line 361
    .end local v0    # "scanImmediately":Z
    :pswitch_14
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 362
    .local v0, "isConnected":I
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateWifiConnectedInfo(I)V

    .line 363
    goto/16 :goto_2

    .line 357
    .end local v0    # "isConnected":I
    :pswitch_15
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->initWifiManager()V

    .line 358
    goto/16 :goto_2

    .line 300
    :pswitch_16
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setNattKeepAliveStatus(Landroid/os/Message;)V

    .line 301
    goto/16 :goto_2

    .line 297
    :pswitch_17
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkIfstartWifiScan(Z)V

    .line 298
    goto/16 :goto_2

    .line 282
    :pswitch_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sync airplane mode to MD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 283
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    if-eqz v0, :cond_1

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    .line 285
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabledWithSyncAPMode()V

    .line 288
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiAssoc()V

    .line 289
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 290
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    if-eqz v0, :cond_5

    .line 291
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiSignalLevel()V

    .line 292
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiIpAddress()V

    goto :goto_2

    .line 278
    :pswitch_19
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiIpAddress()V

    .line 279
    goto :goto_2

    .line 272
    :pswitch_1a
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiAssoc()V

    .line 273
    goto :goto_2

    .line 269
    :pswitch_1b
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 270
    goto :goto_2

    .line 266
    :pswitch_1c
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiSignalLevel()V

    .line 267
    goto :goto_2

    .line 246
    :pswitch_1d
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 247
    .restart local v0    # "isConnected":I
    if-nez v0, :cond_2

    .line 248
    const-string v1, "wifi is disconnect, notify packet keep alive to stop"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPacketKeepAliveProcessor:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    invoke-virtual {v1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->notifyWifiDisconnect()V

    goto :goto_1

    .line 252
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateWlanMacAddr()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "currentUeMac":Ljava/lang/String;
    const-string v2, "02:00:00:00:00:00"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 257
    :cond_3
    sget-object v2, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 258
    sput-object v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiPdnHandler updateWlanMacAddr mWifiUeMac: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 262
    .end local v1    # "currentUeMac":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateWifiConnectedInfo(I)V

    .line 263
    nop

    .line 398
    .end local v0    # "isConnected":I
    :cond_5
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44d
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x47e
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4b0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isWifiConnected()Z
    .locals 1

    .line 717
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    return v0
.end method

.method public isWifiPdnExisted()Z
    .locals 3

    .line 1584
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-ge v0, v1, :cond_1

    .line 1585
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiPdnExisted:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 1586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWifiPdnExisted: found WiFi PDN on SIM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1587
    const/4 v1, 0x1

    return v1

    .line 1584
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1590
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 1761
    sget-boolean v0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->USR_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->TELDBG:Z

    if-eqz v0, :cond_1

    .line 1762
    :cond_0
    const-string v0, "WifiPdnHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    :cond_1
    return-void
.end method

.method public setWfcHandler(Lcom/mediatek/wfo/impl/WfcHandler;)V
    .locals 0
    .param p1, "wfcHandler"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 1767
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    .line 1768
    return-void
.end method

.method public setWifiOff()V
    .locals 1

    .line 1276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 1277
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 1278
    return-void
.end method
