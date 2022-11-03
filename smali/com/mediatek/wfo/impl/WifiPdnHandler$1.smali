.class Lcom/mediatek/wfo/impl/WifiPdnHandler$1;
.super Ljava/lang/Object;
.source "WifiPdnHandler.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$StaStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WifiPdnHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 230
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStaToBeOff()V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v1, "WifiManager.StaStateCallback - onStaToBeOff"

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const/16 v1, 0x3f5

    const/16 v2, 0x26ac

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 235
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 236
    return-void
.end method
