.class Lcom/samsung/privilege/activity/MainPagerActivity$3;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->showDialogErrorPermissions(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

.field final synthetic val$dialogError:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$3;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$3;->val$dialogError:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$3;->val$dialogError:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 351
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$3;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->finish()V

    .line 352
    return-void
.end method
