.class public Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CampaignReviewRatingActivity.java"


# instance fields
.field private a:Lcom/bzbs/bean/Campaign;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private f()V
    .registers 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Campaign;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->a:Lcom/bzbs/bean/Campaign;

    .line 44
    return-void
.end method

.method private g()V
    .registers 5

    .prologue
    const/16 v2, 0x8

    .line 47
    const v0, 0x7f100119

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->a:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v0, 0x7f100128

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 51
    const v1, 0x7f100125

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 53
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 54
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 56
    const v2, 0x7f100120

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    .line 57
    new-instance v3, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity$2;-><init>(Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 72
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->finish()V

    .line 76
    return-void
.end method

.method public doSubmit(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 80
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f04002b

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->setContentView(I)V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->b:Landroid/os/Handler;

    .line 28
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->f()V

    .line 29
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->g()V

    .line 30
    return-void
.end method
