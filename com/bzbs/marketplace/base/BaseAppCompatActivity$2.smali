.class Lcom/bzbs/marketplace/base/BaseAppCompatActivity$2;
.super Ljava/lang/Object;
.source "BaseAppCompatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

.field final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "this$0"    # Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$2;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iput-object p2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$2;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$2;->val$savedInstanceState:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 203
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$2;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v0}, Lcom/bzbs/marketplace/sticker/StickerUtil;->loadStickerSet(Landroid/content/Context;)V

    .line 205
    :cond_b
    return-void
.end method
