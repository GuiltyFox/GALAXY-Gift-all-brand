.class final Lcom/samsung/privilege/util/DialogNotification$5;
.super Ljava/lang/Object;
.source "DialogNotification.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogNotification;->a(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .prologue
    .line 177
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogNotification$5;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogNotification$5;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogNotification$5;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogNotification$5;->b:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogNotification;->b(Landroid/content/Context;Landroid/os/Handler;)V

    .line 181
    return-void
.end method
