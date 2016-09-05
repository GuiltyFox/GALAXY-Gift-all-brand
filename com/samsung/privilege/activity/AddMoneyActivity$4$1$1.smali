.class Lcom/samsung/privilege/activity/AddMoneyActivity$4$1$1;
.super Ljava/lang/Object;
.source "AddMoneyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AddMoneyActivity$4$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/samsung/privilege/activity/AddMoneyActivity$4$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AddMoneyActivity$4$1;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 312
    iput-object p1, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4$1$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$4$1;

    iput-object p2, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4$1$1;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4$1$1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 315
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4$1$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$4$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/AddMoneyActivity$4$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/AddMoneyActivity$4;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->finish()V

    .line 316
    return-void
.end method
