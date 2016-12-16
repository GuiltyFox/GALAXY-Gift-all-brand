.class Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$4;
.super Ljava/lang/Object;
.source "DashboardGiftRecyclerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardRow;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/bean/DashboardItem;

.field final synthetic b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Lcom/bzbs/bean/DashboardItem;)V
    .registers 3

    .prologue
    .line 1322
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$4;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iput-object p2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$4;->a:Lcom/bzbs/bean/DashboardItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$4;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$4;->a:Lcom/bzbs/bean/DashboardItem;

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;)V

    .line 1326
    return-void
.end method
