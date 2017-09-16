.class Lcom/samsung/privilege/activity/StampListActivity$UserLoginListener$1;
.super Ljava/lang/Object;
.source "StampListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampListActivity$UserLoginListener;->a(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/StampListActivity$UserLoginListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampListActivity$UserLoginListener;)V
    .registers 2

    .prologue
    .line 128
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampListActivity$UserLoginListener$1;->a:Lcom/samsung/privilege/activity/StampListActivity$UserLoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampListActivity$UserLoginListener$1;->a:Lcom/samsung/privilege/activity/StampListActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/StampListActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/StampListActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampListActivity;->a(Lcom/samsung/privilege/activity/StampListActivity;)V

    .line 132
    return-void
.end method
