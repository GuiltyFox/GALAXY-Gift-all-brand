.class Lcom/samsung/privilege/activity/CampaignPostActivity$1;
.super Ljava/lang/Object;
.source "CampaignPostActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignPostActivity;->initialLayout()V
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
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

.field private final synthetic val$imgSticker:Lcom/loopj/android/image/SmartImageView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignPostActivity;Lcom/loopj/android/image/SmartImageView;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$1;->val$imgSticker:Lcom/loopj/android/image/SmartImageView;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v6, 0xc8

    const/4 v2, 0x0

    .line 298
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignPostActivity;->gCurrentStickerSet:I
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignPostActivity;->access$4(Lcom/samsung/privilege/activity/CampaignPostActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/StickerSet;

    iget-object v0, v0, Lcom/samsung/privilege/bean/StickerSet;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/privilege/bean/Sticker;

    .line 313
    .local v8, "sticker":Lcom/samsung/privilege/bean/Sticker;
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$1;->val$imgSticker:Lcom/loopj/android/image/SmartImageView;

    invoke-virtual {v0, v8}, Lcom/loopj/android/image/SmartImageView;->setTag(Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$1;->val$imgSticker:Lcom/loopj/android/image/SmartImageView;

    iget-object v1, v8, Lcom/samsung/privilege/bean/Sticker;->PictureUrl:Ljava/lang/String;

    const/4 v4, 0x1

    const v5, 0x7f02039f

    move v3, v2

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/loopj/android/image/SmartImageView;->setImageUrl(Ljava/lang/String;ZIZIII)V

    .line 316
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignPostActivity;

    new-instance v1, Lcom/samsung/privilege/PostData;

    invoke-direct {v1}, Lcom/samsung/privilege/PostData;-><init>()V

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignPostActivity;->access$5(Lcom/samsung/privilege/activity/CampaignPostActivity;Lcom/samsung/privilege/PostData;)V

    .line 317
    return-void
.end method
