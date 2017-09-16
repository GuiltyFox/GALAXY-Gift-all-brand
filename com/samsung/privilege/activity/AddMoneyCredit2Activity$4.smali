.class Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$4;
.super Ljava/lang/Object;
.source "AddMoneyCredit2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->doConfirm(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 339
    iput-object p1, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$4;->b:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$4;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$4;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 342
    return-void
.end method
