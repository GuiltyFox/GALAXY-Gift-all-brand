.class Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener$2;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;)V
    .registers 2

    .prologue
    .line 1456
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener$2;->a:Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener$2;->a:Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->f()V

    .line 1460
    return-void
.end method
