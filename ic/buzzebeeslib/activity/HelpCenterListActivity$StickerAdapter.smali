.class public Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "HelpCenterListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StickerAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field galImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/StickerSet;",
            ">;"
        }
    .end annotation
.end field

.field imageLayout:Landroid/view/View;

.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/StickerSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1705
    .local p3, "galImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/StickerSet;>;"
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 1706
    iput-object p2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->context:Landroid/content/Context;

    .line 1707
    iput-object p3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->galImages:Ljava/util/ArrayList;

    .line 1708
    invoke-virtual {p1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 1709
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;)Lic/buzzebeeslib/activity/HelpCenterListActivity;
    .registers 2

    .prologue
    .line 1699
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 1751
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 1713
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->galImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 11
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x0

    .line 1723
    iget-object v4, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->galImages:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/buzzebeeslib/bean/StickerSet;

    .line 1725
    .local v3, "marketGalleryView":Lic/buzzebeeslib/bean/StickerSet;
    iget-object v4, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v5, Lic/buzzebeeslib/R$layout;->bz_sticker_pager_item:I

    invoke-virtual {v4, v5, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1726
    .local v2, "imageLayout":Landroid/view/View;
    iput-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->imageLayout:Landroid/view/View;

    .line 1727
    sget v4, Lic/buzzebeeslib/R$id;->gridSticker:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 1728
    .local v1, "gridSticker":Landroid/widget/GridView;
    new-instance v0, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;

    iget-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    iget-object v4, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/buzzebeeslib/bean/StickerSet;

    iget-object v4, v4, Lic/buzzebeeslib/bean/StickerSet;->stickers:Ljava/util/ArrayList;

    iget-object v6, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v6}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$10(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v6

    invoke-direct {v0, v5, v4, v6}, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/bitmapfun/util/ImageFetcher;)V

    .line 1729
    .local v0, "adapterSticker":Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1731
    new-instance v4, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter$1;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter$1;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;)V

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1743
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p1, v2, v7}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 1744
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 1718
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
