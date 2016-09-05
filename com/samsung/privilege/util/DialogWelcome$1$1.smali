.class Lcom/samsung/privilege/util/DialogWelcome$1$1;
.super Ljava/lang/Object;
.source "DialogWelcome.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogWelcome$1;->onPageSelected(I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/DialogWelcome$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogWelcome$1;)V
    .registers 2

    .prologue
    .line 148
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogWelcome$1$1;->a:Lcom/samsung/privilege/util/DialogWelcome$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 151
    invoke-static {}, Lcom/samsung/privilege/util/DialogWelcome;->b()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 154
    :try_start_7
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogWelcome$1$1;->a:Lcom/samsung/privilege/util/DialogWelcome$1;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogWelcome$1;->b:Landroid/content/Context;

    check-cast v0, Lcom/samsung/privilege/activity/MainPagerActivity;

    .line 155
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->d:Z

    .line 156
    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->g()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    .line 160
    :goto_13
    return-void

    .line 157
    :catch_14
    move-exception v0

    goto :goto_13
.end method
