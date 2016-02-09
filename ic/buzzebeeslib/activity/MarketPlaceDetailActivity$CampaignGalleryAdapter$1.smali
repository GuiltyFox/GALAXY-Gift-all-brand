.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter;

.field private final synthetic val$holder_final:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter;Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$1;->val$holder_final:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;

    .line 3341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 6

    .prologue
    .line 3344
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$1;->val$holder_final:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;

    iget-object v3, v3, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;->imgCampaignGalleryThumb:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3345
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$1;->val$holder_final:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;

    iget-object v3, v3, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;->imgCampaignGalleryThumb:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    .line 3346
    .local v1, "gLayoutImageWidth":I
    mul-int/lit8 v3, v1, 0x2

    div-int/lit8 v0, v3, 0x3

    .line 3347
    .local v0, "gLayoutImageHeight":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3348
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xe

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3349
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$1;->val$holder_final:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;

    iget-object v3, v3, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;->imgCampaignGalleryThumb:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3350
    return-void
.end method
