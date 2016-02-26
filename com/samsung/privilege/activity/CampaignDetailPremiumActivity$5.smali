.class Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$5;
.super Ljava/lang/Object;
.source "CampaignDetailPremiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->processLikeAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$5;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    .line 1181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1183
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$5;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget-boolean v2, v2, Lcom/samsung/privilege/bean/CampaignView;->IsLike:Z

    if-eqz v2, :cond_7a

    .line 1184
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$5;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget v3, v2, Lcom/samsung/privilege/bean/CampaignView;->PeopleLike:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/samsung/privilege/bean/CampaignView;->PeopleLike:I

    .line 1185
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$5;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iput-boolean v4, v2, Lcom/samsung/privilege/bean/CampaignView;->IsLike:Z

    .line 1191
    :goto_1f
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$5;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget v2, v2, Lcom/samsung/privilege/bean/CampaignView;->PeopleLike:I

    if-gez v2, :cond_31

    .line 1192
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$5;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iput v4, v2, Lcom/samsung/privilege/bean/CampaignView;->PeopleLike:I

    .line 1195
    :cond_31
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$5;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    const v3, 0x7f0c02af

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1196
    .local v1, "tvLike":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$5;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v3

    iget v3, v3, Lcom/samsung/privilege/bean/CampaignView;->PeopleLike:I

    invoke-static {v3}, Lcom/samsung/privilege/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Likes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$5;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    const v3, 0x7f0c02ae

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1199
    .local v0, "imgLike":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$5;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget-boolean v2, v2, Lcom/samsung/privilege/bean/CampaignView;->IsLike:Z

    if-eqz v2, :cond_90

    .line 1200
    const v2, 0x7f020364

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1206
    :goto_79
    return-void

    .line 1187
    .end local v0    # "imgLike":Landroid/widget/ImageView;
    .end local v1    # "tvLike":Landroid/widget/TextView;
    :cond_7a
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$5;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget v3, v2, Lcom/samsung/privilege/bean/CampaignView;->PeopleLike:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/samsung/privilege/bean/CampaignView;->PeopleLike:I

    .line 1188
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$5;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/privilege/bean/CampaignView;->IsLike:Z

    goto :goto_1f

    .line 1203
    .restart local v0    # "imgLike":Landroid/widget/ImageView;
    .restart local v1    # "tvLike":Landroid/widget/TextView;
    :cond_90
    const v2, 0x7f020363

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_79
.end method
