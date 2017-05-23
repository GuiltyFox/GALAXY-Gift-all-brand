.class Lcom/samsung/privilege/activity/MainPagerActivity$21$1;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity$21;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/MainPagerActivity$21;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity$21;)V
    .registers 2

    .prologue
    .line 1831
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$21$1;->a:Lcom/samsung/privilege/activity/MainPagerActivity$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$21$1;->a:Lcom/samsung/privilege/activity/MainPagerActivity$21;

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity$21;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->h()V

    .line 1834
    return-void
.end method
