.class public Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CampaignReviewActivity.java"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/RelativeLayout;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/RelativeLayout;

.field f:Landroid/widget/ProgressBar;

.field g:Landroid/widget/ImageView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/ImageView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/RelativeLayout;

.field l:Landroid/widget/ImageView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/RelativeLayout;

.field o:Landroid/widget/TextView;

.field p:Landroid/widget/TextView;

.field q:Landroid/widget/RelativeLayout;

.field r:Landroid/widget/RelativeLayout;

.field s:Landroid/widget/RelativeLayout;

.field t:Landroid/widget/ImageView;

.field u:Landroid/widget/ImageView;

.field v:Landroid/widget/TextView;

.field w:Landroid/widget/ProgressBar;

.field x:Landroid/widget/ImageView;

.field final synthetic y:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 726
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->y:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    .line 727
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 729
    const v0, 0x7f100120

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->a:Landroid/widget/TextView;

    .line 730
    const v0, 0x7f100121

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->b:Landroid/widget/RelativeLayout;

    .line 731
    const v0, 0x7f100123

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->c:Landroid/widget/ImageView;

    .line 732
    const v0, 0x7f10012a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->d:Landroid/widget/TextView;

    .line 733
    const v0, 0x7f100124

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->e:Landroid/widget/RelativeLayout;

    .line 734
    const v0, 0x7f100125

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->f:Landroid/widget/ProgressBar;

    .line 735
    const v0, 0x7f100126

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->g:Landroid/widget/ImageView;

    .line 736
    const v0, 0x7f100127

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->h:Landroid/widget/TextView;

    .line 737
    const v0, 0x7f100128

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->i:Landroid/widget/ImageView;

    .line 738
    const v0, 0x7f100129

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->j:Landroid/widget/TextView;

    .line 739
    const v0, 0x7f10012b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->k:Landroid/widget/RelativeLayout;

    .line 740
    const v0, 0x7f10012c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->l:Landroid/widget/ImageView;

    .line 741
    const v0, 0x7f10012d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->m:Landroid/widget/TextView;

    .line 742
    const v0, 0x7f10012e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->n:Landroid/widget/RelativeLayout;

    .line 743
    const v0, 0x7f100131

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->o:Landroid/widget/TextView;

    .line 744
    const v0, 0x7f100133

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->p:Landroid/widget/TextView;

    .line 745
    const v0, 0x7f100132

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->q:Landroid/widget/RelativeLayout;

    .line 746
    const v0, 0x7f100134

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->r:Landroid/widget/RelativeLayout;

    .line 747
    const v0, 0x7f100136

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->s:Landroid/widget/RelativeLayout;

    .line 749
    const v0, 0x7f100135

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->t:Landroid/widget/ImageView;

    .line 750
    const v0, 0x7f100138

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->u:Landroid/widget/ImageView;

    .line 751
    const v0, 0x7f100137

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->v:Landroid/widget/TextView;

    .line 752
    const v0, 0x7f10012f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->w:Landroid/widget/ProgressBar;

    .line 753
    const v0, 0x7f100130

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;->x:Landroid/widget/ImageView;

    .line 754
    return-void
.end method
