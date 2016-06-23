.class public Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CampaignReviewRatingActivity.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private paramCampaign:Lcom/bzbs/bean/Campaign;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initialLayout()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    .line 47
    const v4, 0x7f100103

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 48
    .local v3, "textTitle":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v4, v4, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v4, 0x7f100112

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 51
    .local v1, "layoutRootRatingLow":Landroid/widget/LinearLayout;
    const v4, 0x7f10010f

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 53
    .local v0, "layoutRootRatingHigh":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 54
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 56
    const v4, 0x7f10010a

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    .line 57
    .local v2, "ratingBar":Landroid/widget/RatingBar;
    new-instance v4, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity$2;

    invoke-direct {v4, p0, v1, v0}, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity$2;-><init>(Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v4}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 72
    return-void
.end method

.method private initialParam()V
    .registers 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Campaign;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    .line 44
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity$1;-><init>(Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->finish()V

    .line 76
    return-void
.end method

.method public doSubmit(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f040024

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->setContentView(I)V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->mHandler:Landroid/os/Handler;

    .line 28
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->initialParam()V

    .line 29
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->initialLayout()V

    .line 30
    return-void
.end method
