.class Lcom/samsung/privilege/activity/ProfileActivity$16;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/ProfileActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity;)V
    .registers 2

    .prologue
    .line 801
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$16;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 803
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$16;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-static {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->a(Lcom/samsung/privilege/activity/ProfileActivity;Z)Z

    .line 804
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$16;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->showDialog(I)V

    .line 805
    return v2
.end method
