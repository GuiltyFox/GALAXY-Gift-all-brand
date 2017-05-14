.class Lcom/samsung/privilege/util/DialogProfile$4$2;
.super Ljava/lang/Object;
.source "DialogProfile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogProfile$4;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/DialogProfile$4;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogProfile$4;)V
    .registers 2

    .prologue
    .line 217
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogProfile$4$2;->a:Lcom/samsung/privilege/util/DialogProfile$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogProfile$4$2;->a:Lcom/samsung/privilege/util/DialogProfile$4;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogProfile$4;->b:Landroid/app/Dialog;

    const v1, 0x7f100603

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/privilege/util/DialogProfile;->a(Z)Z

    .line 223
    return-void
.end method
