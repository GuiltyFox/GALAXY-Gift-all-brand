.class Lcom/samsung/privilege/activity/ProfileActivity$15;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/ProfileActivity;

    .prologue
    .line 782
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$15;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 784
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$15;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    # setter for: Lcom/samsung/privilege/activity/ProfileActivity;->gIsSelectStartDateTime:Z
    invoke-static {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->access$002(Lcom/samsung/privilege/activity/ProfileActivity;Z)Z

    .line 785
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$15;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->showDialog(I)V

    .line 786
    return v2
.end method
