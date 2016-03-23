.class public Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageSlideAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "CampaignDetailGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CampaignImageSlideAdapter"
.end annotation


# instance fields
.field public mParamPagers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/CampaignGallery;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/CampaignGallery;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1558
    .local p2, "pParamPagers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/CampaignGallery;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 1555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageSlideAdapter;->mParamPagers:Ljava/util/ArrayList;

    .line 1559
    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageSlideAdapter;->mParamPagers:Ljava/util/ArrayList;

    .line 1560
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageSlideAdapter;->mParamPagers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1569
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageSlideAdapter;->mParamPagers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/CampaignGallery;

    .line 1570
    .local v0, "objCampaignGallery":Lcom/bzbs/bean/CampaignGallery;
    invoke-virtual {v0}, Lcom/bzbs/bean/CampaignGallery;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;

    move-result-object v1

    return-object v1
.end method
