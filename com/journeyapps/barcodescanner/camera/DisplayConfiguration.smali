.class public Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;
.super Ljava/lang/Object;
.source "DisplayConfiguration.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/journeyapps/barcodescanner/Size;

.field private c:I

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/journeyapps/barcodescanner/Size;)V
    .registers 4

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->d:Z

    .line 28
    iput p1, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->c:I

    .line 29
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->b:Lcom/journeyapps/barcodescanner/Size;

    .line 30
    return-void
.end method

.method public static a(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;
    .registers 8

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 135
    .line 137
    invoke-virtual {p1, p0}, Lcom/journeyapps/barcodescanner/Size;->a(Lcom/journeyapps/barcodescanner/Size;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 140
    :cond_9
    invoke-virtual {p0, v5, v3}, Lcom/journeyapps/barcodescanner/Size;->a(II)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v0

    .line 141
    invoke-virtual {p0, v3, v4}, Lcom/journeyapps/barcodescanner/Size;->a(II)Lcom/journeyapps/barcodescanner/Size;

    move-result-object p0

    .line 142
    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/Size;->a(Lcom/journeyapps/barcodescanner/Size;)Z

    move-result v1

    if-eqz v1, :cond_19

    move-object p0, v0

    .line 165
    :cond_18
    :goto_18
    return-object p0

    .line 145
    :cond_19
    invoke-virtual {p1, p0}, Lcom/journeyapps/barcodescanner/Size;->a(Lcom/journeyapps/barcodescanner/Size;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_18

    :cond_20
    move-object p0, v0

    .line 156
    :cond_21
    invoke-virtual {p0, v3, v5}, Lcom/journeyapps/barcodescanner/Size;->a(II)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v1

    .line 157
    invoke-virtual {p0, v4, v3}, Lcom/journeyapps/barcodescanner/Size;->a(II)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v0

    .line 159
    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/Size;->a(Lcom/journeyapps/barcodescanner/Size;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 160
    invoke-virtual {p1, v1}, Lcom/journeyapps/barcodescanner/Size;->a(Lcom/journeyapps/barcodescanner/Size;)Z

    move-result v0

    if-eqz v0, :cond_18

    move-object p0, v1

    .line 162
    goto :goto_18
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->c:I

    return v0
.end method

.method public a(Lcom/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;
    .registers 9

    .prologue
    .line 185
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->b:Lcom/journeyapps/barcodescanner/Size;

    invoke-static {p1, v0}, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->a(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v0

    .line 186
    sget-object v1, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Preview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; Scaled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; Want: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->b:Lcom/journeyapps/barcodescanner/Size;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget v1, v0, Lcom/journeyapps/barcodescanner/Size;->a:I

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->b:Lcom/journeyapps/barcodescanner/Size;

    iget v2, v2, Lcom/journeyapps/barcodescanner/Size;->a:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 189
    iget v2, v0, Lcom/journeyapps/barcodescanner/Size;->b:I

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->b:Lcom/journeyapps/barcodescanner/Size;

    iget v3, v3, Lcom/journeyapps/barcodescanner/Size;->b:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 191
    new-instance v3, Landroid/graphics/Rect;

    neg-int v4, v1

    neg-int v5, v2

    iget v6, v0, Lcom/journeyapps/barcodescanner/Size;->a:I

    sub-int v1, v6, v1

    iget v0, v0, Lcom/journeyapps/barcodescanner/Size;->b:I

    sub-int/2addr v0, v2

    invoke-direct {v3, v4, v5, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method public a(Ljava/util/List;Z)Lcom/journeyapps/barcodescanner/Size;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/journeyapps/barcodescanner/Size;",
            ">;Z)",
            "Lcom/journeyapps/barcodescanner/Size;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 77
    invoke-virtual {p0, p2}, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->a(Z)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v0

    .line 79
    if-nez v0, :cond_e

    .line 80
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/Size;

    .line 119
    :goto_d
    return-object v0

    .line 83
    :cond_e
    new-instance v1, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration$1;

    invoke-direct {v1, p0, v0}, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration$1;-><init>(Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;Lcom/journeyapps/barcodescanner/Size;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 116
    sget-object v1, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Viewfinder size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Preview in order of preference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/Size;

    goto :goto_d
.end method

.method public a(Z)Lcom/journeyapps/barcodescanner/Size;
    .registers 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->b:Lcom/journeyapps/barcodescanner/Size;

    if-nez v0, :cond_6

    .line 46
    const/4 v0, 0x0

    .line 50
    :goto_5
    return-object v0

    .line 47
    :cond_6
    if-eqz p1, :cond_f

    .line 48
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->b:Lcom/journeyapps/barcodescanner/Size;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/Size;->a()Lcom/journeyapps/barcodescanner/Size;

    move-result-object v0

    goto :goto_5

    .line 50
    :cond_f
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->b:Lcom/journeyapps/barcodescanner/Size;

    goto :goto_5
.end method
