.class Lic/buzzebeeslib/activity/CampaignPostActivity$1;
.super Ljava/lang/Object;
.source "CampaignPostActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignPostActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/CampaignPostActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignPostActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignPostActivity;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignPostActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lic/buzzebeeslib/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignPostActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignPostActivity;->gCurrentStickerSet:I
    invoke-static {v1}, Lic/buzzebeeslib/activity/CampaignPostActivity;->access$3(Lic/buzzebeeslib/activity/CampaignPostActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/StickerSet;

    iget-object v0, v0, Lic/buzzebeeslib/bean/StickerSet;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lic/buzzebeeslib/bean/Sticker;

    .line 333
    .local v6, "sticker":Lic/buzzebeeslib/bean/Sticker;
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignPostActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignPostActivity;->gImgSticker:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->access$4(Lic/buzzebeeslib/activity/CampaignPostActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignPostActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignPostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->access$5(Lic/buzzebeeslib/activity/CampaignPostActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    iget-object v1, v6, Lic/buzzebeeslib/bean/Sticker;->PictureUrl:Ljava/lang/String;

    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignPostActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignPostActivity;->gImgSticker:Landroid/widget/ImageView;
    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignPostActivity;->access$4(Lic/buzzebeeslib/activity/CampaignPostActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 337
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$1;->this$0:Lic/buzzebeeslib/activity/CampaignPostActivity;

    new-instance v1, Lic/buzzebeeslib/util/async/PostData;

    invoke-direct {v1}, Lic/buzzebeeslib/util/async/PostData;-><init>()V

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/CampaignPostActivity;->access$6(Lic/buzzebeeslib/activity/CampaignPostActivity;Lic/buzzebeeslib/util/async/PostData;)V

    .line 338
    return-void
.end method
