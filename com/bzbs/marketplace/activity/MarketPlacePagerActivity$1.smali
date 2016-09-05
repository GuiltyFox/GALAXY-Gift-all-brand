.class Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$1;
.super Ljava/lang/Object;
.source "MarketPlacePagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->a(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 98
    iput-object p1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$1;->b:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    iput-object p2, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$1;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$1;->a:Landroid/os/Bundle;

    if-nez v0, :cond_d

    .line 102
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$1;->b:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-static {v0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->a(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/marketplace/sticker/StickerUtil;->d(Landroid/content/Context;)V

    .line 104
    :cond_d
    return-void
.end method
