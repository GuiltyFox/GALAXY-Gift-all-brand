.class Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;
.super Ljava/lang/Object;
.source "CampaignDetailAdActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;

.field private final synthetic val$pbLoadingAds:Landroid/widget/ProgressBar;

.field private final synthetic val$response_code:I


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;Landroid/widget/ProgressBar;I)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;

    iput-object p2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->val$pbLoadingAds:Landroid/widget/ProgressBar;

    iput p3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->val$response_code:I

    .line 1082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 1084
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->val$pbLoadingAds:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1085
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$idCampaignDetailAd;->tvLike:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1086
    .local v2, "txtLike":Landroid/widget/TextView;
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$idCampaignDetailAd;->txtComment:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1087
    .local v1, "txtComment":Landroid/widget/TextView;
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget v4, v4, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget v4, v4, Lic/buzzebeeslib/bean/Campaign;->Buzz:I

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1089
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$id;->imgLike:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1090
    .local v0, "imgLike":Landroid/widget/ImageView;
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-boolean v4, v4, Lic/buzzebeeslib/bean/Campaign;->IsLike:Z

    if-eqz v4, :cond_13f

    .line 1091
    sget v4, Lic/buzzebeeslib/R$drawable;->bz_icon_like_ads_detail_2x:I

    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v5

    invoke-virtual {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1098
    :goto_74
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$idCampaignDetailAd;->txtWatched:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1103
    .local v3, "txtWatched":Landroid/widget/TextView;
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v4

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1105
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v5, "5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b7

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v5, "6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_160

    .line 1106
    :cond_b7
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$idCampaignDetailAd;->btnWatch:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1107
    iget v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->val$response_code:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_135

    .line 1108
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-boolean v4, v4, Lic/buzzebeeslib/bean/Campaign;->IsConditionPass:Z

    if-eqz v4, :cond_150

    .line 1109
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v5

    sget v6, Lic/buzzebeeslib/R$string;->campaign_detail_ad_points:I

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->formatterHasDigi:Ljava/text/NumberFormat;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$8(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Ljava/text/NumberFormat;

    move-result-object v5

    iget-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v6}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v6

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v6}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v6

    iget-object v6, v6, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v6}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v5

    sget v6, Lic/buzzebeeslib/R$string;->dashboard_points:I

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    :cond_135
    :goto_135
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v4

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->initialLayout()V
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$9(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V

    .line 1119
    return-void

    .line 1094
    .end local v3    # "txtWatched":Landroid/widget/TextView;
    :cond_13f
    sget v4, Lic/buzzebeeslib/R$drawable;->bz_icon_like_ads_detail_gray_2x:I

    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v5

    invoke-virtual {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_74

    .line 1111
    .restart local v3    # "txtWatched":Landroid/widget/TextView;
    :cond_150
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$string;->campaign_detail_ad_watched:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_135

    .line 1115
    :cond_160
    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_135
.end method
