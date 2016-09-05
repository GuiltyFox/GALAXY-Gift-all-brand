.class public final Lcom/facebook/share/internal/LikeDialog$Result;
.super Ljava/lang/Object;
.source "LikeDialog.java"


# instance fields
.field private final bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/facebook/share/internal/LikeDialog$Result;->bundle:Landroid/os/Bundle;

    .line 62
    return-void
.end method


# virtual methods
.method public getData()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/share/internal/LikeDialog$Result;->bundle:Landroid/os/Bundle;

    return-object v0
.end method
