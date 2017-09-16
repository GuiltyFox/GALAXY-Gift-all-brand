.class public Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$HistoryViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "StampBranchActivity.java"


# instance fields
.field a:Landroid/support/v7/widget/CardView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/LinearLayout;

.field final synthetic e:Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 415
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$HistoryViewHolder;->e:Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;

    .line 416
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 417
    const v0, 0x7f100116

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$HistoryViewHolder;->a:Landroid/support/v7/widget/CardView;

    .line 418
    const v0, 0x7f100173

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$HistoryViewHolder;->b:Landroid/widget/TextView;

    .line 419
    const v0, 0x7f1001f3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$HistoryViewHolder;->c:Landroid/widget/TextView;

    .line 420
    const v0, 0x7f1001f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$HistoryViewHolder;->d:Landroid/widget/LinearLayout;

    .line 421
    return-void
.end method
