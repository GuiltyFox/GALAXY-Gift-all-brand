.class public Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HistoryActivity.java"


# instance fields
.field a:Landroid/support/v7/widget/CardView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/ImageView;

.field final synthetic h:Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 945
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->h:Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;

    .line 946
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 947
    const v0, 0x7f100116

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->a:Landroid/support/v7/widget/CardView;

    .line 948
    const v0, 0x7f100171

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->b:Landroid/widget/ImageView;

    .line 949
    const v0, 0x7f100172

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->c:Landroid/widget/TextView;

    .line 950
    const v0, 0x7f100173

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->d:Landroid/widget/TextView;

    .line 951
    const v0, 0x7f100174

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->e:Landroid/widget/TextView;

    .line 952
    const v0, 0x7f100175

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->f:Landroid/widget/TextView;

    .line 953
    const v0, 0x7f100176

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->g:Landroid/widget/ImageView;

    .line 954
    return-void
.end method
