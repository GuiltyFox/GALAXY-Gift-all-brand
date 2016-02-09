.class Lic/buzzebeeslib/activity/CampaignDetailAdActivity$17;
.super Ljava/lang/Object;
.source "CampaignDetailAdActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->processLikeAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$17;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    .line 1507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1510
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$17;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget-boolean v3, v3, Lic/buzzebeeslib/bean/Campaign;->IsLike:Z

    if-eqz v3, :cond_79

    .line 1511
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$17;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget v4, v3, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    .line 1512
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$17;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iput-boolean v5, v3, Lic/buzzebeeslib/bean/Campaign;->IsLike:Z

    .line 1518
    :goto_1f
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$17;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget v3, v3, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    if-gez v3, :cond_31

    .line 1519
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$17;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iput v5, v3, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    .line 1522
    :cond_31
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$17;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v4, Lic/buzzebeeslib/R$idCampaignDetailAd;->tvLike:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1528
    .local v2, "tvLike":Landroid/widget/TextView;
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$17;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget v3, v3, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1530
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$17;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v4, Lic/buzzebeeslib/R$id;->imgLike:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1531
    .local v0, "imgLike":Landroid/widget/ImageView;
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$17;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget-boolean v3, v3, Lic/buzzebeeslib/bean/Campaign;->IsLike:Z

    if-eqz v3, :cond_8f

    .line 1532
    sget v3, Lic/buzzebeeslib/R$drawable;->bz_icon_like_ads_detail_2x:I

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$17;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1538
    :goto_69
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$17;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v4, Lic/buzzebeeslib/R$idCampaignDetailAd;->pbImgLike:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 1539
    .local v1, "pbImgLike":Landroid/widget/ProgressBar;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1541
    return-void

    .line 1514
    .end local v0    # "imgLike":Landroid/widget/ImageView;
    .end local v1    # "pbImgLike":Landroid/widget/ProgressBar;
    .end local v2    # "tvLike":Landroid/widget/TextView;
    :cond_79
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$17;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget v4, v3, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    .line 1515
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$17;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v3, Lic/buzzebeeslib/bean/Campaign;->IsLike:Z

    goto :goto_1f

    .line 1535
    .restart local v0    # "imgLike":Landroid/widget/ImageView;
    .restart local v2    # "tvLike":Landroid/widget/TextView;
    :cond_8f
    sget v3, Lic/buzzebeeslib/R$drawable;->bz_icon_like_ads_detail_gray_2x:I

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$17;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto :goto_69
.end method
