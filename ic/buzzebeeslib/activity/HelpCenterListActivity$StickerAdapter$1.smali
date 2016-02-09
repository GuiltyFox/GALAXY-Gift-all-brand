.class Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter$1;
.super Ljava/lang/Object;
.source "HelpCenterListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
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
.field final synthetic this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;

    .line 1731
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 1734
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->pagerSticker:Landroid/support/v4/view/ViewPager;
    invoke-static {v3}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$16(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/bean/StickerSet;

    iget-object v2, v2, Lic/buzzebeeslib/bean/StickerSet;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/Sticker;

    .line 1735
    .local v1, "sticker":Lic/buzzebeeslib/bean/Sticker;
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->imgMedia:Landroid/widget/ImageView;
    invoke-static {v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$17(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1736
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    new-instance v3, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    invoke-direct {v3, v6}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 1737
    .local v0, "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/activity/HelpCenterListActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v3, v1, Lic/buzzebeeslib/bean/Sticker;->PictureUrl:Ljava/lang/String;

    iget-object v4, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->imgMedia:Landroid/widget/ImageView;
    invoke-static {v4}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$17(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
    invoke-static {v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$9(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 1738
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/util/async/PostData;

    invoke-direct {v3}, Lic/buzzebeeslib/util/async/PostData;-><init>()V

    invoke-static {v2, v3}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$18(Lic/buzzebeeslib/activity/HelpCenterListActivity;Lic/buzzebeeslib/util/async/PostData;)V

    .line 1739
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentMedia:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$19(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1740
    return-void
.end method
