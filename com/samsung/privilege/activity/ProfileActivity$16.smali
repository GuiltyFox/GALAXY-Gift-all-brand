.class Lcom/samsung/privilege/activity/ProfileActivity$16;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity;->i()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity;)V
    .registers 2

    .prologue
    .line 622
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$16;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 625
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$16;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$16;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/ProfileActivity;->a(Lcom/samsung/privilege/activity/ProfileActivity;)Landroid/os/Handler;

    move-result-object v1

    const-string/jumbo v2, "profile"

    const-string/jumbo v3, "shipping"

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogProfile;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    return-void
.end method
