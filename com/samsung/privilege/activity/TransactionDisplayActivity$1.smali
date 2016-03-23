.class Lcom/samsung/privilege/activity/TransactionDisplayActivity$1;
.super Ljava/lang/Object;
.source "TransactionDisplayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/TransactionDisplayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/TransactionDisplayActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$1;->this$0:Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$1;->this$0:Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->finish()V

    .line 72
    return-void
.end method
