.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$31;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->processLikeAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$31;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    .line 4166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 4169
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$31;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget-boolean v2, v2, Lic/buzzebeeslib/bean/Campaign;->IsLike:Z

    if-eqz v2, :cond_75

    .line 4170
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$31;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget v3, v2, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    .line 4171
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$31;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iput-boolean v4, v2, Lic/buzzebeeslib/bean/Campaign;->IsLike:Z

    .line 4177
    :goto_1f
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$31;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget v2, v2, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    if-gez v2, :cond_31

    .line 4178
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$31;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iput v4, v2, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    .line 4181
    :cond_31
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$31;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    sget v3, Lic/buzzebeeslib/R$id;->tvLike:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4187
    .local v1, "tvLike":Landroid/widget/TextView;
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$31;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget v2, v2, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4189
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$31;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    sget v3, Lic/buzzebeeslib/R$id;->imgLike:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4190
    .local v0, "imgLike":Landroid/widget/ImageView;
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$31;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget-boolean v2, v2, Lic/buzzebeeslib/bean/Campaign;->IsLike:Z

    if-eqz v2, :cond_8b

    .line 4191
    sget v2, Lic/buzzebeeslib/R$drawable;->bz_like_icon_gray_2x:I

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$31;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 4198
    :goto_69
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$31;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->pbImgLike:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$62(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4200
    return-void

    .line 4173
    .end local v0    # "imgLike":Landroid/widget/ImageView;
    .end local v1    # "tvLike":Landroid/widget/TextView;
    :cond_75
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$31;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget v3, v2, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    .line 4174
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$31;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lic/buzzebeeslib/bean/Campaign;->IsLike:Z

    goto :goto_1f

    .line 4194
    .restart local v0    # "imgLike":Landroid/widget/ImageView;
    .restart local v1    # "tvLike":Landroid/widget/TextView;
    :cond_8b
    sget v2, Lic/buzzebeeslib/R$drawable;->bz_like_icon_2x:I

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$31;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto :goto_69
.end method
