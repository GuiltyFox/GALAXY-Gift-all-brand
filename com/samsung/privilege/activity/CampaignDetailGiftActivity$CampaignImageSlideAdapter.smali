.class public Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageSlideAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "CampaignDetailGiftActivity.java"


# instance fields
.field public a:Ljava/util/ArrayList;
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
    .line 1728
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 1725
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageSlideAdapter;->a:Ljava/util/ArrayList;

    .line 1729
    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageSlideAdapter;->a:Ljava/util/ArrayList;

    .line 1730
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/app/Fragment;
    .registers 6

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageSlideAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/CampaignGallery;

    .line 1740
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    invoke-virtual {v0}, Lcom/bzbs/bean/CampaignGallery;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;->a(Ljava/lang/String;)Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageSlideAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
