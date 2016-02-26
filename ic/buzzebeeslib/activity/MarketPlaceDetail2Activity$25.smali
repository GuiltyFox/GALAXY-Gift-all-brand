.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$25;
.super Ljava/lang/Object;
.source "MarketPlaceDetail2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->processLikeAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$25;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    .line 3047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 3050
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$25;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget-boolean v3, v3, Lic/buzzebeeslib/bean/Campaign;->IsLike:Z

    if-eqz v3, :cond_79

    .line 3051
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$25;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget v4, v3, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    .line 3052
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$25;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iput-boolean v5, v3, Lic/buzzebeeslib/bean/Campaign;->IsLike:Z

    .line 3058
    :goto_1f
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$25;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget v3, v3, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    if-gez v3, :cond_31

    .line 3059
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$25;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iput v5, v3, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    .line 3062
    :cond_31
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$25;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    sget v4, Lic/buzzebeeslib/R$id;->tvToolLike:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3068
    .local v2, "tvToolLike":Landroid/widget/TextView;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$25;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget v3, v3, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3070
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$25;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    sget v4, Lic/buzzebeeslib/R$id;->ivToolLike:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3071
    .local v0, "ivToolLike":Landroid/widget/ImageView;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$25;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget-boolean v3, v3, Lic/buzzebeeslib/bean/Campaign;->IsLike:Z

    if-eqz v3, :cond_8f

    .line 3072
    sget v3, Lic/buzzebeeslib/R$drawable;->bz_tool_like:I

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$25;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 3077
    :goto_69
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$25;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    sget v4, Lic/buzzebeeslib/R$id;->pbToolLike:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 3078
    .local v1, "pbToolLike":Landroid/widget/ProgressBar;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3080
    return-void

    .line 3054
    .end local v0    # "ivToolLike":Landroid/widget/ImageView;
    .end local v1    # "pbToolLike":Landroid/widget/ProgressBar;
    .end local v2    # "tvToolLike":Landroid/widget/TextView;
    :cond_79
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$25;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget v4, v3, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    .line 3055
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$25;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v3, Lic/buzzebeeslib/bean/Campaign;->IsLike:Z

    goto :goto_1f

    .line 3074
    .restart local v0    # "ivToolLike":Landroid/widget/ImageView;
    .restart local v2    # "tvToolLike":Landroid/widget/TextView;
    :cond_8f
    sget v3, Lic/buzzebeeslib/R$drawable;->bz_tool_like_gray:I

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$25;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto :goto_69
.end method
