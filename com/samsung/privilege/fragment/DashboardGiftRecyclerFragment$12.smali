.class Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$12;
.super Ljava/lang/Object;
.source "DashboardGiftRecyclerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->c(Lcom/bzbs/bean/DashboardItem;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Lcom/bzbs/bean/DashboardItem;

.field final synthetic d:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/widget/EditText;Landroid/app/Dialog;Lcom/bzbs/bean/DashboardItem;)V
    .registers 5

    .prologue
    .line 2804
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$12;->d:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iput-object p2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$12;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$12;->b:Landroid/app/Dialog;

    iput-object p4, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$12;->c:Lcom/bzbs/bean/DashboardItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    const v4, 0x7f0902df

    .line 2806
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$12;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2808
    if-eqz v0, :cond_5a

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 2809
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2d

    .line 2810
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$12;->b:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2811
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$12;->d:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$12;->c:Lcom/bzbs/bean/DashboardItem;

    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V

    .line 2818
    :goto_2c
    return-void

    .line 2813
    :cond_2d
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$12;->d:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$12;->d:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const v3, 0x7f090310

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$12;->d:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v2, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->c(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)V

    goto :goto_2c

    .line 2816
    :cond_5a
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$12;->d:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$12;->d:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const v3, 0x7f090311

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$12;->d:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v2, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->c(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)V

    goto :goto_2c
.end method
