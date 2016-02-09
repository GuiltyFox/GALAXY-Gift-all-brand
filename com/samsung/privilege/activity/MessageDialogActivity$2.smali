.class Lcom/samsung/privilege/activity/MessageDialogActivity$2;
.super Ljava/lang/Object;
.source "MessageDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MessageDialogActivity;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MessageDialogActivity;

.field private final synthetic val$dialogSerial:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MessageDialogActivity;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$2;->this$0:Lcom/samsung/privilege/activity/MessageDialogActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$2;->val$dialogSerial:Landroid/app/Dialog;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$2;->val$dialogSerial:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 74
    iget-object v0, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$2;->this$0:Lcom/samsung/privilege/activity/MessageDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->finish()V

    .line 75
    return-void
.end method
