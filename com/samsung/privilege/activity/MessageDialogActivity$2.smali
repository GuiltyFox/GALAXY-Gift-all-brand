.class Lcom/samsung/privilege/activity/MessageDialogActivity$2;
.super Ljava/lang/Object;
.source "MessageDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MessageDialogActivity;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/samsung/privilege/activity/MessageDialogActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MessageDialogActivity;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 78
    iput-object p1, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$2;->b:Lcom/samsung/privilege/activity/MessageDialogActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$2;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$2;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 81
    iget-object v0, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$2;->b:Lcom/samsung/privilege/activity/MessageDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->finish()V

    .line 82
    return-void
.end method
