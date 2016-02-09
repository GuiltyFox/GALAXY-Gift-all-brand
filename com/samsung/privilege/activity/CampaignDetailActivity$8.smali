.class Lcom/samsung/privilege/activity/CampaignDetailActivity$8;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity;->processLikeAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$8;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    .line 1392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1394
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$8;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget-boolean v2, v2, Lcom/samsung/privilege/bean/CampaignView;->IsLike:Z

    if-eqz v2, :cond_6d

    .line 1395
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$8;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget v3, v2, Lcom/samsung/privilege/bean/CampaignView;->PeopleLike:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/samsung/privilege/bean/CampaignView;->PeopleLike:I

    .line 1396
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$8;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iput-boolean v4, v2, Lcom/samsung/privilege/bean/CampaignView;->IsLike:Z

    .line 1402
    :goto_1f
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$8;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget v2, v2, Lcom/samsung/privilege/bean/CampaignView;->PeopleLike:I

    if-gez v2, :cond_31

    .line 1403
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$8;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iput v4, v2, Lcom/samsung/privilege/bean/CampaignView;->PeopleLike:I

    .line 1406
    :cond_31
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$8;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    const v3, 0x7f3c0015

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1412
    .local v1, "tvLike":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$8;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget v2, v2, Lcom/samsung/privilege/bean/CampaignView;->PeopleLike:I

    invoke-static {v2}, Lcom/samsung/privilege/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$8;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    const v3, 0x7f3c0016

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1415
    .local v0, "imgLike":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$8;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget-boolean v2, v2, Lcom/samsung/privilege/bean/CampaignView;->IsLike:Z

    if-eqz v2, :cond_83

    .line 1416
    const v2, 0x7f02031a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1417
    const v2, 0x7f02007b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1422
    :goto_6c
    return-void

    .line 1398
    .end local v0    # "imgLike":Landroid/widget/ImageView;
    .end local v1    # "tvLike":Landroid/widget/TextView;
    :cond_6d
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$8;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget v3, v2, Lcom/samsung/privilege/bean/CampaignView;->PeopleLike:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/samsung/privilege/bean/CampaignView;->PeopleLike:I

    .line 1399
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$8;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/privilege/bean/CampaignView;->IsLike:Z

    goto :goto_1f

    .line 1419
    .restart local v0    # "imgLike":Landroid/widget/ImageView;
    .restart local v1    # "tvLike":Landroid/widget/TextView;
    :cond_83
    const v2, 0x7f02031b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1420
    const v2, 0x7f02007c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_6c
.end method
