.class Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration$1;
.super Ljava/lang/Object;
.source "DisplayConfiguration.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->a(Ljava/util/List;Z)Lcom/journeyapps/barcodescanner/Size;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/journeyapps/barcodescanner/Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/Size;

.field final synthetic b:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;Lcom/journeyapps/barcodescanner/Size;)V
    .registers 3

    .prologue
    .line 83
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration$1;->b:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration$1;->a:Lcom/journeyapps/barcodescanner/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)I
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 86
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration$1;->a:Lcom/journeyapps/barcodescanner/Size;

    invoke-static {p1, v2}, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->a(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v2

    .line 87
    iget v2, v2, Lcom/journeyapps/barcodescanner/Size;->a:I

    iget v3, p1, Lcom/journeyapps/barcodescanner/Size;->a:I

    sub-int/2addr v2, v3

    .line 88
    iget-object v3, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration$1;->a:Lcom/journeyapps/barcodescanner/Size;

    invoke-static {p2, v3}, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->a(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v3

    .line 89
    iget v3, v3, Lcom/journeyapps/barcodescanner/Size;->a:I

    iget v4, p2, Lcom/journeyapps/barcodescanner/Size;->a:I

    sub-int/2addr v3, v4

    .line 91
    if-nez v2, :cond_21

    if-nez v3, :cond_21

    .line 93
    invoke-virtual {p1, p2}, Lcom/journeyapps/barcodescanner/Size;->b(Lcom/journeyapps/barcodescanner/Size;)I

    move-result v0

    .line 111
    :cond_20
    :goto_20
    return v0

    .line 94
    :cond_21
    if-eqz v2, :cond_20

    .line 97
    if-nez v3, :cond_27

    move v0, v1

    .line 99
    goto :goto_20

    .line 100
    :cond_27
    if-gez v2, :cond_30

    if-gez v3, :cond_30

    .line 102
    invoke-virtual {p1, p2}, Lcom/journeyapps/barcodescanner/Size;->b(Lcom/journeyapps/barcodescanner/Size;)I

    move-result v0

    goto :goto_20

    .line 103
    :cond_30
    if-lez v2, :cond_3a

    if-lez v3, :cond_3a

    .line 105
    invoke-virtual {p1, p2}, Lcom/journeyapps/barcodescanner/Size;->b(Lcom/journeyapps/barcodescanner/Size;)I

    move-result v0

    neg-int v0, v0

    goto :goto_20

    .line 106
    :cond_3a
    if-ltz v2, :cond_20

    move v0, v1

    .line 111
    goto :goto_20
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 83
    check-cast p1, Lcom/journeyapps/barcodescanner/Size;

    check-cast p2, Lcom/journeyapps/barcodescanner/Size;

    invoke-virtual {p0, p1, p2}, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration$1;->a(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)I

    move-result v0

    return v0
.end method
