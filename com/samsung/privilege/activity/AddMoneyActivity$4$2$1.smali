.class Lcom/samsung/privilege/activity/AddMoneyActivity$4$2$1;
.super Ljava/lang/Object;
.source "AddMoneyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AddMoneyActivity$4$2;->run()V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/samsung/privilege/activity/AddMoneyActivity$4$2;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AddMoneyActivity$4$2;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 351
    iput-object p1, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4$2$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$4$2;

    iput-object p2, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4$2$1;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4$2$1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 354
    return-void
.end method
