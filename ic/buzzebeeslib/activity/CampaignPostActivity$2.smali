.class Lic/buzzebeeslib/activity/CampaignPostActivity$2;
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

.field private final synthetic val$gridSticker:Landroid/widget/GridView;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignPostActivity;Landroid/widget/GridView;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$2;->this$0:Lic/buzzebeeslib/activity/CampaignPostActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$2;->val$gridSticker:Landroid/widget/GridView;

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
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
    .line 343
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;

    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$2;->this$0:Lic/buzzebeeslib/activity/CampaignPostActivity;

    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$2;->this$0:Lic/buzzebeeslib/activity/CampaignPostActivity;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lic/buzzebeeslib/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/StickerSet;

    iget-object v1, v1, Lic/buzzebeeslib/bean/StickerSet;->stickers:Ljava/util/ArrayList;

    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$2;->this$0:Lic/buzzebeeslib/activity/CampaignPostActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignPostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v3}, Lic/buzzebeeslib/activity/CampaignPostActivity;->access$5(Lic/buzzebeeslib/activity/CampaignPostActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/bitmapfun/util/ImageFetcher;)V

    .line 344
    .local v0, "adapterSticker":Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$2;->val$gridSticker:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 346
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity$2;->this$0:Lic/buzzebeeslib/activity/CampaignPostActivity;

    invoke-static {v1, p3}, Lic/buzzebeeslib/activity/CampaignPostActivity;->access$7(Lic/buzzebeeslib/activity/CampaignPostActivity;I)V

    .line 347
    return-void
.end method
