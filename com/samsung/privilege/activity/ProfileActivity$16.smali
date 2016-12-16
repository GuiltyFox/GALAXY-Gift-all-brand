.class Lcom/samsung/privilege/activity/ProfileActivity$16;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lcom/bzbs/event/ProfileEvents$ProfileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity;->onResume()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity;)V
    .registers 2

    .prologue
    .line 672
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$16;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$16;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileActivity;->b(Lcom/samsung/privilege/activity/ProfileActivity;)V

    .line 676
    return-void
.end method
