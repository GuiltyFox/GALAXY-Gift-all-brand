.class public Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DialogSearch.java"


# instance fields
.field a:Landroid/support/v7/widget/CardView;

.field b:Landroid/widget/LinearLayout;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field final synthetic h:Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 378
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;->h:Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;

    .line 379
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 380
    const v0, 0x7f100116

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;->a:Landroid/support/v7/widget/CardView;

    .line 381
    const v0, 0x7f1000d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;->b:Landroid/widget/LinearLayout;

    .line 382
    const v0, 0x7f100118

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;->c:Landroid/widget/ImageView;

    .line 383
    const v0, 0x7f100119

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;->d:Landroid/widget/TextView;

    .line 384
    const v0, 0x7f10011a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;->e:Landroid/widget/TextView;

    .line 385
    const v0, 0x7f10011c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;->f:Landroid/widget/TextView;

    .line 386
    const v0, 0x7f10011b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter$CampaignViewHolder;->g:Landroid/widget/TextView;

    .line 387
    return-void
.end method
