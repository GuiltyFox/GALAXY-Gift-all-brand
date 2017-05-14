.class final Lcom/samsung/privilege/util/DialogProfile$2;
.super Ljava/lang/Object;
.source "DialogProfile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogProfile;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 136
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogProfile$2;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogProfile$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogProfile$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 139
    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 140
    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->a()Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogProfile$2;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogProfile$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogProfile$2;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogProfile;->a(Landroid/app/Dialog;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_14
    return-void
.end method
