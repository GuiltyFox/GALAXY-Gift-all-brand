.class Lcom/samsung/privilege/activity/AddMoneyCreditActivity$3;
.super Ljava/lang/Object;
.source "AddMoneyCreditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AddMoneyCreditActivity;->doConfirm(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/samsung/privilege/activity/AddMoneyCreditActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AddMoneyCreditActivity;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 284
    iput-object p1, p0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$3;->b:Lcom/samsung/privilege/activity/AddMoneyCreditActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$3;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$3;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 287
    return-void
.end method
