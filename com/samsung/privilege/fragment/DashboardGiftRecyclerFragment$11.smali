.class Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$11;
.super Ljava/lang/Object;
.source "DashboardGiftRecyclerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->c(Lcom/bzbs/bean/DashboardItem;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 2797
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$11;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iput-object p2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$11;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 2799
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$11;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2800
    return-void
.end method
