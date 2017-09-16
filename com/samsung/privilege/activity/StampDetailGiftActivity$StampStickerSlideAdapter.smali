.class public Lcom/samsung/privilege/activity/StampDetailGiftActivity$StampStickerSlideAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "StampDetailGiftActivity.java"


# instance fields
.field public a:I

.field public b:Lcom/bzbs/bean/StampAgency;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/StampCampaign;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;ILcom/bzbs/bean/StampAgency;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "I",
            "Lcom/bzbs/bean/StampAgency;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/StampCampaign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 916
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 917
    iput p2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StampStickerSlideAdapter;->a:I

    .line 918
    iput-object p3, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StampStickerSlideAdapter;->b:Lcom/bzbs/bean/StampAgency;

    .line 919
    iput-object p4, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StampStickerSlideAdapter;->c:Ljava/util/ArrayList;

    .line 920
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/app/Fragment;
    .registers 4

    .prologue
    .line 931
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StampStickerSlideAdapter;->b:Lcom/bzbs/bean/StampAgency;

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StampStickerSlideAdapter;->c:Ljava/util/ArrayList;

    invoke-static {p1, v0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->a(ILcom/bzbs/bean/StampAgency;Ljava/util/ArrayList;)Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 924
    iget v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StampStickerSlideAdapter;->a:I

    return v0
.end method
