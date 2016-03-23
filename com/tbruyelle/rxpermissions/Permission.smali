.class public Lcom/tbruyelle/rxpermissions/Permission;
.super Ljava/lang/Object;
.source "Permission.java"


# instance fields
.field public final granted:Z

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions/Permission;->name:Ljava/lang/String;

    .line 9
    iput-boolean p2, p0, Lcom/tbruyelle/rxpermissions/Permission;->granted:Z

    .line 10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 14
    if-ne p0, p1, :cond_5

    const/4 v1, 0x1

    .line 20
    :cond_4
    :goto_4
    return v1

    .line 15
    :cond_5
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_4

    move-object v0, p1

    .line 17
    check-cast v0, Lcom/tbruyelle/rxpermissions/Permission;

    .line 19
    .local v0, "that":Lcom/tbruyelle/rxpermissions/Permission;
    iget-boolean v2, p0, Lcom/tbruyelle/rxpermissions/Permission;->granted:Z

    iget-boolean v3, v0, Lcom/tbruyelle/rxpermissions/Permission;->granted:Z

    if-ne v2, v3, :cond_4

    .line 20
    iget-object v1, p0, Lcom/tbruyelle/rxpermissions/Permission;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/tbruyelle/rxpermissions/Permission;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 25
    iget-object v1, p0, Lcom/tbruyelle/rxpermissions/Permission;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 26
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/tbruyelle/rxpermissions/Permission;->granted:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    :goto_d
    add-int v0, v2, v1

    .line 27
    return v0

    .line 26
    :cond_10
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tbruyelle/rxpermissions/Permission;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", granted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tbruyelle/rxpermissions/Permission;->granted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
