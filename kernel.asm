
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	ac013103          	ld	sp,-1344(sp) # 8000bac0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	4c8060ef          	jal	ra,800064e4 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    csrw sscratch, sp
    80001004:	14011073          	csrw	sscratch,sp
    sd x0, 0(sp)
    80001008:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    8000100c:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    80001010:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001014:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001018:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    8000101c:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    80001020:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001024:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001028:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    8000102c:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    80001030:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001034:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001038:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    8000103c:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001040:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001044:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001048:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    8000104c:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001050:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001054:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001058:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    8000105c:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001060:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001064:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001068:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    8000106c:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001070:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001074:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001078:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    8000107c:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001080:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    80001084:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001088:	758030ef          	jal	ra,800047e0 <_ZN5Riscv20handleSupervisorTrapEv>

    ld x0, 0(sp)
    8000108c:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001090:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    80001094:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001098:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001108:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    80001110:	10200073          	sret
	...

0000000080001120 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    ret
    80001214:	00008067          	ret

0000000080001218 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001218:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000121c:	00b29a63          	bne	t0,a1,80001230 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001220:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001224:	fe029ae3          	bnez	t0,80001218 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001228:	00000513          	li	a0,0
    jr ra                  # Return.
    8000122c:	00008067          	ret

0000000080001230 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001230:	00100513          	li	a0,1
    80001234:	00008067          	ret

0000000080001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001238:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000123c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001240:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001244:	0085b083          	ld	ra,8(a1)

    ret
    80001248:	00008067          	ret

000000008000124c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000124c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001250:	00853083          	ld	ra,8(a0)

    80001254:	00008067          	ret

0000000080001258 <_Z6strcpyPKcPc>:
//singleton slab allocator
static slab_allocator_t* slabAllocator = nullptr;

//helping functions
void strcpy(const char* src, char* dst)
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    while(*src != '\0')
    80001264:	00054783          	lbu	a5,0(a0)
    80001268:	00078a63          	beqz	a5,8000127c <_Z6strcpyPKcPc+0x24>
    {
        *dst = *src;
    8000126c:	00f58023          	sb	a5,0(a1)
        src++; dst++;
    80001270:	00150513          	addi	a0,a0,1
    80001274:	00158593          	addi	a1,a1,1
    while(*src != '\0')
    80001278:	fedff06f          	j	80001264 <_Z6strcpyPKcPc+0xc>
    }
    *dst = *src;
    8000127c:	00f58023          	sb	a5,0(a1)
}
    80001280:	00813403          	ld	s0,8(sp)
    80001284:	01010113          	addi	sp,sp,16
    80001288:	00008067          	ret

000000008000128c <_Z17destroy_slab_listPP6slab_s>:

int destroy_slab_list(slab_t** slab)
{
    8000128c:	fd010113          	addi	sp,sp,-48
    80001290:	02113423          	sd	ra,40(sp)
    80001294:	02813023          	sd	s0,32(sp)
    80001298:	00913c23          	sd	s1,24(sp)
    8000129c:	01213823          	sd	s2,16(sp)
    800012a0:	01313423          	sd	s3,8(sp)
    800012a4:	01413023          	sd	s4,0(sp)
    800012a8:	03010413          	addi	s0,sp,48
    if(slab == nullptr) return 0;
    800012ac:	04050463          	beqz	a0,800012f4 <_Z17destroy_slab_listPP6slab_s+0x68>
    800012b0:	00050493          	mv	s1,a0
    size_t sz = (*slab)->owner->slab_size;
    800012b4:	00053783          	ld	a5,0(a0)
    800012b8:	0107b783          	ld	a5,16(a5)
    800012bc:	0587b983          	ld	s3,88(a5)
    int totalBlocks = 0;
    800012c0:	00000913          	li	s2,0
    while(*slab != nullptr)
    800012c4:	0004b583          	ld	a1,0(s1)
    800012c8:	02058863          	beqz	a1,800012f8 <_Z17destroy_slab_listPP6slab_s+0x6c>
    {
        slab_t* nextSlab = (*slab)->next;
    800012cc:	0085ba03          	ld	s4,8(a1)
        buddy_free(slabAllocator->buddy, *slab, sz);
    800012d0:	00098613          	mv	a2,s3
    800012d4:	0000b797          	auipc	a5,0xb
    800012d8:	88c7b783          	ld	a5,-1908(a5) # 8000bb60 <_ZL13slabAllocator>
    800012dc:	0007b503          	ld	a0,0(a5)
    800012e0:	00002097          	auipc	ra,0x2
    800012e4:	e84080e7          	jalr	-380(ra) # 80003164 <_Z10buddy_freeP14buddyAllocatorPvm>
        *slab = nextSlab;
    800012e8:	0144b023          	sd	s4,0(s1)
        totalBlocks+=sz;
    800012ec:	0129893b          	addw	s2,s3,s2
    while(*slab != nullptr)
    800012f0:	fd5ff06f          	j	800012c4 <_Z17destroy_slab_listPP6slab_s+0x38>
    if(slab == nullptr) return 0;
    800012f4:	00000913          	li	s2,0
    }
    return totalBlocks;
}
    800012f8:	00090513          	mv	a0,s2
    800012fc:	02813083          	ld	ra,40(sp)
    80001300:	02013403          	ld	s0,32(sp)
    80001304:	01813483          	ld	s1,24(sp)
    80001308:	01013903          	ld	s2,16(sp)
    8000130c:	00813983          	ld	s3,8(sp)
    80001310:	00013a03          	ld	s4,0(sp)
    80001314:	03010113          	addi	sp,sp,48
    80001318:	00008067          	ret

000000008000131c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>:

void init_cache(kmem_cache_t* cachep, const char* cache_name, size_t slab_size, size_t obj_size, void (*ctor)(void*),void (*dtor)(void*))
{
    8000131c:	fc010113          	addi	sp,sp,-64
    80001320:	02113c23          	sd	ra,56(sp)
    80001324:	02813823          	sd	s0,48(sp)
    80001328:	02913423          	sd	s1,40(sp)
    8000132c:	03213023          	sd	s2,32(sp)
    80001330:	01313c23          	sd	s3,24(sp)
    80001334:	01413823          	sd	s4,16(sp)
    80001338:	01513423          	sd	s5,8(sp)
    8000133c:	04010413          	addi	s0,sp,64
    80001340:	00050493          	mv	s1,a0
    80001344:	00058513          	mv	a0,a1
    80001348:	00060a93          	mv	s5,a2
    8000134c:	00068a13          	mv	s4,a3
    80001350:	00070993          	mv	s3,a4
    80001354:	00078913          	mv	s2,a5
    strcpy(cache_name, cachep->cacheName);
    80001358:	00048593          	mv	a1,s1
    8000135c:	00000097          	auipc	ra,0x0
    80001360:	efc080e7          	jalr	-260(ra) # 80001258 <_Z6strcpyPKcPc>
    cachep->slab_size = slab_size;
    80001364:	0554bc23          	sd	s5,88(s1)
    cachep->obj_size = obj_size;
    80001368:	0744b023          	sd	s4,96(s1)
    cachep->ctor = ctor;
    8000136c:	0734b423          	sd	s3,104(s1)
    cachep->dtor = dtor;
    80001370:	0724b823          	sd	s2,112(s1)

    cachep->slabs_empty = cachep->slabs_partial = cachep->slabs_full = nullptr;
    80001374:	0404b423          	sd	zero,72(s1)
    80001378:	0404b823          	sd	zero,80(s1)
    8000137c:	0404b023          	sd	zero,64(s1)
    cachep->errors = NO_ERROR;
    80001380:	0604ac23          	sw	zero,120(s1)
}
    80001384:	03813083          	ld	ra,56(sp)
    80001388:	03013403          	ld	s0,48(sp)
    8000138c:	02813483          	ld	s1,40(sp)
    80001390:	02013903          	ld	s2,32(sp)
    80001394:	01813983          	ld	s3,24(sp)
    80001398:	01013a03          	ld	s4,16(sp)
    8000139c:	00813a83          	ld	s5,8(sp)
    800013a0:	04010113          	addi	sp,sp,64
    800013a4:	00008067          	ret

00000000800013a8 <_Z19slab_allocator_initP14buddyAllocator>:

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    800013a8:	fe010113          	addi	sp,sp,-32
    800013ac:	00113c23          	sd	ra,24(sp)
    800013b0:	00813823          	sd	s0,16(sp)
    800013b4:	00913423          	sd	s1,8(sp)
    800013b8:	02010413          	addi	s0,sp,32
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);
    800013bc:	0e050493          	addi	s1,a0,224

    slabAllocatorLocal->buddy = buddy;
    800013c0:	0ea53023          	sd	a0,224(a0)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800013c4:	00000793          	li	a5,0
    800013c8:	0140006f          	j	800013dc <_Z19slab_allocator_initP14buddyAllocator+0x34>
        slabAllocatorLocal->cachesBuffers[i] = nullptr;
    800013cc:	00379713          	slli	a4,a5,0x3
    800013d0:	00e50733          	add	a4,a0,a4
    800013d4:	0e073423          	sd	zero,232(a4)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800013d8:	00178793          	addi	a5,a5,1
    800013dc:	00c00713          	li	a4,12
    800013e0:	fef776e3          	bgeu	a4,a5,800013cc <_Z19slab_allocator_initP14buddyAllocator+0x24>

    init_cache(&slabAllocatorLocal->cacheOfCaches, "Cache of caches", CACHE_OF_CACHES_SLAB_SIZE, sizeof(kmem_cache_t), nullptr,nullptr);
    800013e4:	00000793          	li	a5,0
    800013e8:	00000713          	li	a4,0
    800013ec:	08000693          	li	a3,128
    800013f0:	00200613          	li	a2,2
    800013f4:	00008597          	auipc	a1,0x8
    800013f8:	c2c58593          	addi	a1,a1,-980 # 80009020 <CONSOLE_STATUS+0x10>
    800013fc:	15050513          	addi	a0,a0,336
    80001400:	00000097          	auipc	ra,0x0
    80001404:	f1c080e7          	jalr	-228(ra) # 8000131c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>

    return slabAllocatorLocal;
}
    80001408:	00048513          	mv	a0,s1
    8000140c:	01813083          	ld	ra,24(sp)
    80001410:	01013403          	ld	s0,16(sp)
    80001414:	00813483          	ld	s1,8(sp)
    80001418:	02010113          	addi	sp,sp,32
    8000141c:	00008067          	ret

0000000080001420 <_Z13checkSetIndexP6slab_si>:

bool checkSetIndex(slab_t* slab, int index)
{
    80001420:	ff010113          	addi	sp,sp,-16
    80001424:	00813423          	sd	s0,8(sp)
    80001428:	01010413          	addi	s0,sp,16
    return (uint8)slab->allocated[index / 8] & (1 << (index%8));
    8000142c:	41f5d79b          	sraiw	a5,a1,0x1f
    80001430:	01d7d79b          	srliw	a5,a5,0x1d
    80001434:	00b785bb          	addw	a1,a5,a1
    80001438:	4035d71b          	sraiw	a4,a1,0x3
    8000143c:	00e50533          	add	a0,a0,a4
    80001440:	02854503          	lbu	a0,40(a0)
    80001444:	0075f593          	andi	a1,a1,7
    80001448:	40f585bb          	subw	a1,a1,a5
    8000144c:	40b5553b          	sraw	a0,a0,a1
}
    80001450:	00157513          	andi	a0,a0,1
    80001454:	00813403          	ld	s0,8(sp)
    80001458:	01010113          	addi	sp,sp,16
    8000145c:	00008067          	ret

0000000080001460 <_Z17setAllocatedIndexP6slab_si>:

void setAllocatedIndex(slab_t* slab, int index)
{
    80001460:	ff010113          	addi	sp,sp,-16
    80001464:	00813423          	sd	s0,8(sp)
    80001468:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
    8000146c:	41f5d79b          	sraiw	a5,a1,0x1f
    80001470:	01d7d79b          	srliw	a5,a5,0x1d
    80001474:	00b785bb          	addw	a1,a5,a1
    80001478:	4035d71b          	sraiw	a4,a1,0x3
    8000147c:	00e50533          	add	a0,a0,a4
    80001480:	02850703          	lb	a4,40(a0)
    80001484:	0075f593          	andi	a1,a1,7
    80001488:	40f585bb          	subw	a1,a1,a5
    8000148c:	00100793          	li	a5,1
    80001490:	00b795bb          	sllw	a1,a5,a1
    80001494:	00b765b3          	or	a1,a4,a1
    80001498:	02b50423          	sb	a1,40(a0)
}
    8000149c:	00813403          	ld	s0,8(sp)
    800014a0:	01010113          	addi	sp,sp,16
    800014a4:	00008067          	ret

00000000800014a8 <_Z14allocateObjectP6slab_s>:

void* allocateObject(slab_t* slab)
{
    800014a8:	fd010113          	addi	sp,sp,-48
    800014ac:	02113423          	sd	ra,40(sp)
    800014b0:	02813023          	sd	s0,32(sp)
    800014b4:	00913c23          	sd	s1,24(sp)
    800014b8:	01213823          	sd	s2,16(sp)
    800014bc:	01313423          	sd	s3,8(sp)
    800014c0:	03010413          	addi	s0,sp,48
    800014c4:	00050913          	mv	s2,a0
    if(slab == nullptr)
    800014c8:	08050863          	beqz	a0,80001558 <_Z14allocateObjectP6slab_s+0xb0>
        return nullptr;
    int index = -1;
    void* addr = nullptr;
    for(size_t i = 0;i < slab->numOfObjects;i++)
    800014cc:	00000493          	li	s1,0
    800014d0:	01893783          	ld	a5,24(s2)
    800014d4:	02f4fe63          	bgeu	s1,a5,80001510 <_Z14allocateObjectP6slab_s+0x68>
    {
        if(!checkSetIndex(slab, i))
    800014d8:	0004899b          	sext.w	s3,s1
    800014dc:	00098593          	mv	a1,s3
    800014e0:	00090513          	mv	a0,s2
    800014e4:	00000097          	auipc	ra,0x0
    800014e8:	f3c080e7          	jalr	-196(ra) # 80001420 <_Z13checkSetIndexP6slab_si>
    800014ec:	00050663          	beqz	a0,800014f8 <_Z14allocateObjectP6slab_s+0x50>
    for(size_t i = 0;i < slab->numOfObjects;i++)
    800014f0:	00148493          	addi	s1,s1,1
    800014f4:	fddff06f          	j	800014d0 <_Z14allocateObjectP6slab_s+0x28>
        {
            addr = (void*)((size_t)slab + sizeof(slab_t)+ i*slab->owner->obj_size);
    800014f8:	01093783          	ld	a5,16(s2)
    800014fc:	0607b783          	ld	a5,96(a5)
    80001500:	029784b3          	mul	s1,a5,s1
    80001504:	009904b3          	add	s1,s2,s1
    80001508:	0a848493          	addi	s1,s1,168
            index = i;
            break;
    8000150c:	00c0006f          	j	80001518 <_Z14allocateObjectP6slab_s+0x70>
    void* addr = nullptr;
    80001510:	00000493          	li	s1,0
    int index = -1;
    80001514:	fff00993          	li	s3,-1
        }
    }
    if(addr == nullptr)
    80001518:	02048063          	beqz	s1,80001538 <_Z14allocateObjectP6slab_s+0x90>
        return nullptr;

    //KConsole::trapPrintStringInt("Allocated index ",index);

    setAllocatedIndex(slab, index);
    8000151c:	00098593          	mv	a1,s3
    80001520:	00090513          	mv	a0,s2
    80001524:	00000097          	auipc	ra,0x0
    80001528:	f3c080e7          	jalr	-196(ra) # 80001460 <_Z17setAllocatedIndexP6slab_si>
    slab->numOfAllocatedObjects++;
    8000152c:	02093783          	ld	a5,32(s2)
    80001530:	00178793          	addi	a5,a5,1
    80001534:	02f93023          	sd	a5,32(s2)

    return addr;
}
    80001538:	00048513          	mv	a0,s1
    8000153c:	02813083          	ld	ra,40(sp)
    80001540:	02013403          	ld	s0,32(sp)
    80001544:	01813483          	ld	s1,24(sp)
    80001548:	01013903          	ld	s2,16(sp)
    8000154c:	00813983          	ld	s3,8(sp)
    80001550:	03010113          	addi	sp,sp,48
    80001554:	00008067          	ret
        return nullptr;
    80001558:	00050493          	mv	s1,a0
    8000155c:	fddff06f          	j	80001538 <_Z14allocateObjectP6slab_s+0x90>

0000000080001560 <_Z4fullP6slab_s>:

bool full(slab_t* slab)
{
    80001560:	ff010113          	addi	sp,sp,-16
    80001564:	00813423          	sd	s0,8(sp)
    80001568:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == slab->numOfObjects;
    8000156c:	02053783          	ld	a5,32(a0)
    80001570:	01853503          	ld	a0,24(a0)
    80001574:	40f50533          	sub	a0,a0,a5
}
    80001578:	00153513          	seqz	a0,a0
    8000157c:	00813403          	ld	s0,8(sp)
    80001580:	01010113          	addi	sp,sp,16
    80001584:	00008067          	ret

0000000080001588 <_Z5emptyP6slab_s>:

bool empty(slab_t* slab)
{
    80001588:	ff010113          	addi	sp,sp,-16
    8000158c:	00813423          	sd	s0,8(sp)
    80001590:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == 0;
    80001594:	02053503          	ld	a0,32(a0)
}
    80001598:	00153513          	seqz	a0,a0
    8000159c:	00813403          	ld	s0,8(sp)
    800015a0:	01010113          	addi	sp,sp,16
    800015a4:	00008067          	ret

00000000800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>:

void insertIntoSlabList(slab_t* slab, slab_t** slab_head)
{
    800015a8:	ff010113          	addi	sp,sp,-16
    800015ac:	00813423          	sd	s0,8(sp)
    800015b0:	01010413          	addi	s0,sp,16
    if(slab == nullptr)
    800015b4:	00050e63          	beqz	a0,800015d0 <_Z18insertIntoSlabListP6slab_sPS0_+0x28>
        return;
    slab->prev = nullptr;
    800015b8:	00053023          	sd	zero,0(a0)
    slab->next = *slab_head;
    800015bc:	0005b783          	ld	a5,0(a1)
    800015c0:	00f53423          	sd	a5,8(a0)
    if(*slab_head != nullptr)
    800015c4:	00078463          	beqz	a5,800015cc <_Z18insertIntoSlabListP6slab_sPS0_+0x24>
        (*slab_head)->prev = slab;
    800015c8:	00a7b023          	sd	a0,0(a5)
    *slab_head = slab;
    800015cc:	00a5b023          	sd	a0,0(a1)
}
    800015d0:	00813403          	ld	s0,8(sp)
    800015d4:	01010113          	addi	sp,sp,16
    800015d8:	00008067          	ret

00000000800015dc <_Z18removeFromSlabListP6slab_sPS0_>:

void removeFromSlabList(slab_t* slab, slab_t** slab_head)
{
    800015dc:	ff010113          	addi	sp,sp,-16
    800015e0:	00813423          	sd	s0,8(sp)
    800015e4:	01010413          	addi	s0,sp,16
    if(slab->prev == nullptr) //same as slab == *slab_head
    800015e8:	00053783          	ld	a5,0(a0)
    800015ec:	02078663          	beqz	a5,80001618 <_Z18removeFromSlabListP6slab_sPS0_+0x3c>
        (*slab_head) = slab->next;
        slab->next = slab->prev = nullptr;
    }
    else
    {
        slab->prev->next = slab->next;
    800015f0:	00853703          	ld	a4,8(a0)
    800015f4:	00e7b423          	sd	a4,8(a5)
        if(slab->next) slab->next->prev = slab->prev;
    800015f8:	00070663          	beqz	a4,80001604 <_Z18removeFromSlabListP6slab_sPS0_+0x28>
    800015fc:	00053783          	ld	a5,0(a0)
    80001600:	00f73023          	sd	a5,0(a4)
        slab->next = slab->prev = nullptr;
    80001604:	00053023          	sd	zero,0(a0)
    80001608:	00053423          	sd	zero,8(a0)
    }
}
    8000160c:	00813403          	ld	s0,8(sp)
    80001610:	01010113          	addi	sp,sp,16
    80001614:	00008067          	ret
        if(slab->next) slab->next->prev = nullptr;
    80001618:	00853783          	ld	a5,8(a0)
    8000161c:	00078463          	beqz	a5,80001624 <_Z18removeFromSlabListP6slab_sPS0_+0x48>
    80001620:	0007b023          	sd	zero,0(a5)
        (*slab_head) = slab->next;
    80001624:	00853783          	ld	a5,8(a0)
    80001628:	00f5b023          	sd	a5,0(a1)
        slab->next = slab->prev = nullptr;
    8000162c:	00053023          	sd	zero,0(a0)
    80001630:	00053423          	sd	zero,8(a0)
    80001634:	fd9ff06f          	j	8000160c <_Z18removeFromSlabListP6slab_sPS0_+0x30>

0000000080001638 <_Z16putPartialToFullP12kmem_cache_s>:

void putPartialToFull(kmem_cache_t* cachep)
{
    80001638:	fe010113          	addi	sp,sp,-32
    8000163c:	00113c23          	sd	ra,24(sp)
    80001640:	00813823          	sd	s0,16(sp)
    80001644:	00913423          	sd	s1,8(sp)
    80001648:	01213023          	sd	s2,0(sp)
    8000164c:	02010413          	addi	s0,sp,32
    80001650:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_partial;
    80001654:	05053903          	ld	s2,80(a0)
    removeFromSlabList(slab, &cachep->slabs_partial);
    80001658:	05050593          	addi	a1,a0,80
    8000165c:	00090513          	mv	a0,s2
    80001660:	00000097          	auipc	ra,0x0
    80001664:	f7c080e7          	jalr	-132(ra) # 800015dc <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_full);
    80001668:	04848593          	addi	a1,s1,72
    8000166c:	00090513          	mv	a0,s2
    80001670:	00000097          	auipc	ra,0x0
    80001674:	f38080e7          	jalr	-200(ra) # 800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001678:	01813083          	ld	ra,24(sp)
    8000167c:	01013403          	ld	s0,16(sp)
    80001680:	00813483          	ld	s1,8(sp)
    80001684:	00013903          	ld	s2,0(sp)
    80001688:	02010113          	addi	sp,sp,32
    8000168c:	00008067          	ret

0000000080001690 <_Z17putEmptyToPartialP12kmem_cache_s>:

void putEmptyToPartial(kmem_cache_t* cachep)
{
    80001690:	fe010113          	addi	sp,sp,-32
    80001694:	00113c23          	sd	ra,24(sp)
    80001698:	00813823          	sd	s0,16(sp)
    8000169c:	00913423          	sd	s1,8(sp)
    800016a0:	01213023          	sd	s2,0(sp)
    800016a4:	02010413          	addi	s0,sp,32
    800016a8:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_empty;
    800016ac:	04053903          	ld	s2,64(a0)
    removeFromSlabList(slab, &cachep->slabs_empty);
    800016b0:	04050593          	addi	a1,a0,64
    800016b4:	00090513          	mv	a0,s2
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	f24080e7          	jalr	-220(ra) # 800015dc <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    800016c0:	05048593          	addi	a1,s1,80
    800016c4:	00090513          	mv	a0,s2
    800016c8:	00000097          	auipc	ra,0x0
    800016cc:	ee0080e7          	jalr	-288(ra) # 800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800016d0:	01813083          	ld	ra,24(sp)
    800016d4:	01013403          	ld	s0,16(sp)
    800016d8:	00813483          	ld	s1,8(sp)
    800016dc:	00013903          	ld	s2,0(sp)
    800016e0:	02010113          	addi	sp,sp,32
    800016e4:	00008067          	ret

00000000800016e8 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>:

void removeFullSlab(kmem_cache_t* cachep, slab_t* slab)
{
    800016e8:	fe010113          	addi	sp,sp,-32
    800016ec:	00113c23          	sd	ra,24(sp)
    800016f0:	00813823          	sd	s0,16(sp)
    800016f4:	00913423          	sd	s1,8(sp)
    800016f8:	01213023          	sd	s2,0(sp)
    800016fc:	02010413          	addi	s0,sp,32
    80001700:	00050913          	mv	s2,a0
    80001704:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_full);
    80001708:	04850593          	addi	a1,a0,72
    8000170c:	00048513          	mv	a0,s1
    80001710:	00000097          	auipc	ra,0x0
    80001714:	ecc080e7          	jalr	-308(ra) # 800015dc <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001718:	05090593          	addi	a1,s2,80
    8000171c:	00048513          	mv	a0,s1
    80001720:	00000097          	auipc	ra,0x0
    80001724:	e88080e7          	jalr	-376(ra) # 800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001728:	01813083          	ld	ra,24(sp)
    8000172c:	01013403          	ld	s0,16(sp)
    80001730:	00813483          	ld	s1,8(sp)
    80001734:	00013903          	ld	s2,0(sp)
    80001738:	02010113          	addi	sp,sp,32
    8000173c:	00008067          	ret

0000000080001740 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>:

void removePartialSlab(kmem_cache_t * cachep, slab_t* slab)
{
    80001740:	fe010113          	addi	sp,sp,-32
    80001744:	00113c23          	sd	ra,24(sp)
    80001748:	00813823          	sd	s0,16(sp)
    8000174c:	00913423          	sd	s1,8(sp)
    80001750:	01213023          	sd	s2,0(sp)
    80001754:	02010413          	addi	s0,sp,32
    80001758:	00050913          	mv	s2,a0
    8000175c:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_partial);
    80001760:	05050593          	addi	a1,a0,80
    80001764:	00048513          	mv	a0,s1
    80001768:	00000097          	auipc	ra,0x0
    8000176c:	e74080e7          	jalr	-396(ra) # 800015dc <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_empty);
    80001770:	04090593          	addi	a1,s2,64
    80001774:	00048513          	mv	a0,s1
    80001778:	00000097          	auipc	ra,0x0
    8000177c:	e30080e7          	jalr	-464(ra) # 800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001780:	01813083          	ld	ra,24(sp)
    80001784:	01013403          	ld	s0,16(sp)
    80001788:	00813483          	ld	s1,8(sp)
    8000178c:	00013903          	ld	s2,0(sp)
    80001790:	02010113          	addi	sp,sp,32
    80001794:	00008067          	ret

0000000080001798 <_Z12allocateSlabP12kmem_cache_s>:

void allocateSlab(kmem_cache_t* cachep)
{
    80001798:	fd010113          	addi	sp,sp,-48
    8000179c:	02113423          	sd	ra,40(sp)
    800017a0:	02813023          	sd	s0,32(sp)
    800017a4:	00913c23          	sd	s1,24(sp)
    800017a8:	01213823          	sd	s2,16(sp)
    800017ac:	01313423          	sd	s3,8(sp)
    800017b0:	03010413          	addi	s0,sp,48
    800017b4:	00050993          	mv	s3,a0
    slab_t* newSlab = (slab_t*)buddy_alloc(slabAllocator->buddy,cachep->slab_size);
    800017b8:	05853583          	ld	a1,88(a0)
    800017bc:	0000a797          	auipc	a5,0xa
    800017c0:	3a47b783          	ld	a5,932(a5) # 8000bb60 <_ZL13slabAllocator>
    800017c4:	0007b503          	ld	a0,0(a5)
    800017c8:	00001097          	auipc	ra,0x1
    800017cc:	6ac080e7          	jalr	1708(ra) # 80002e74 <_Z11buddy_allocP14buddyAllocatorm>
    if(newSlab == nullptr)
    800017d0:	08050c63          	beqz	a0,80001868 <_Z12allocateSlabP12kmem_cache_s+0xd0>
    800017d4:	00050493          	mv	s1,a0
        return;
    newSlab->next = cachep->slabs_empty;
    800017d8:	0409b783          	ld	a5,64(s3)
    800017dc:	00f53423          	sd	a5,8(a0)
    if(cachep->slabs_empty != nullptr)
    800017e0:	00078463          	beqz	a5,800017e8 <_Z12allocateSlabP12kmem_cache_s+0x50>
        cachep->slabs_empty->prev = newSlab;
    800017e4:	00a7b023          	sd	a0,0(a5)
    cachep->slabs_empty = newSlab;
    800017e8:	0499b023          	sd	s1,64(s3)
    newSlab->prev = nullptr;
    800017ec:	0004b023          	sd	zero,0(s1)

    newSlab->numOfAllocatedObjects = 0;
    800017f0:	0204b023          	sd	zero,32(s1)
    newSlab->owner = cachep;
    800017f4:	0134b823          	sd	s3,16(s1)
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    800017f8:	0589b683          	ld	a3,88(s3)
    800017fc:	00c69693          	slli	a3,a3,0xc
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    80001800:	f5868693          	addi	a3,a3,-168
    80001804:	0609b783          	ld	a5,96(s3)
    80001808:	02f6d6b3          	divu	a3,a3,a5
    8000180c:	00d4bc23          	sd	a3,24(s1)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    80001810:	00000713          	li	a4,0
    80001814:	00768793          	addi	a5,a3,7
    80001818:	0037d793          	srli	a5,a5,0x3
    8000181c:	00f77a63          	bgeu	a4,a5,80001830 <_Z12allocateSlabP12kmem_cache_s+0x98>
        newSlab->allocated[i] = 0;
    80001820:	00e487b3          	add	a5,s1,a4
    80001824:	02078423          	sb	zero,40(a5)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    80001828:	00170713          	addi	a4,a4,1
    8000182c:	fe9ff06f          	j	80001814 <_Z12allocateSlabP12kmem_cache_s+0x7c>

    //TODO test
    if(cachep->ctor != nullptr)
    80001830:	0689b783          	ld	a5,104(s3)
    80001834:	02078a63          	beqz	a5,80001868 <_Z12allocateSlabP12kmem_cache_s+0xd0>
    {
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    80001838:	00000913          	li	s2,0
    8000183c:	0184b783          	ld	a5,24(s1)
    80001840:	02f97463          	bgeu	s2,a5,80001868 <_Z12allocateSlabP12kmem_cache_s+0xd0>
            cachep->ctor((void*)((size_t)newSlab + sizeof(slab_t) + i*newSlab->owner->obj_size));
    80001844:	0689b783          	ld	a5,104(s3)
    80001848:	0104b703          	ld	a4,16(s1)
    8000184c:	06073503          	ld	a0,96(a4)
    80001850:	03250533          	mul	a0,a0,s2
    80001854:	00a48533          	add	a0,s1,a0
    80001858:	0a850513          	addi	a0,a0,168
    8000185c:	000780e7          	jalr	a5
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    80001860:	00190913          	addi	s2,s2,1
    80001864:	fd9ff06f          	j	8000183c <_Z12allocateSlabP12kmem_cache_s+0xa4>
    }
}
    80001868:	02813083          	ld	ra,40(sp)
    8000186c:	02013403          	ld	s0,32(sp)
    80001870:	01813483          	ld	s1,24(sp)
    80001874:	01013903          	ld	s2,16(sp)
    80001878:	00813983          	ld	s3,8(sp)
    8000187c:	03010113          	addi	sp,sp,48
    80001880:	00008067          	ret

0000000080001884 <_Z18getOptimalSlabSizem>:

size_t getOptimalSlabSize(size_t obj_size)
{
    80001884:	ff010113          	addi	sp,sp,-16
    80001888:	00813423          	sd	s0,8(sp)
    8000188c:	01010413          	addi	s0,sp,16
    size_t bestSize = BLOCK_SIZE;
    80001890:	000017b7          	lui	a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    80001894:	0a850713          	addi	a4,a0,168
    80001898:	00e7f663          	bgeu	a5,a4,800018a4 <_Z18getOptimalSlabSizem+0x20>
        bestSize<<=1;
    8000189c:	00179793          	slli	a5,a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800018a0:	ff5ff06f          	j	80001894 <_Z18getOptimalSlabSizem+0x10>
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;
    800018a4:	f5878593          	addi	a1,a5,-168 # f58 <_entry-0x7ffff0a8>
    800018a8:	02a5f5b3          	remu	a1,a1,a0

    static size_t lowerConst = 1;
    static size_t highConst = 4;
    for(size_t i = lowerConst;i<=highConst;i++)
    800018ac:	00100693          	li	a3,1
    800018b0:	0080006f          	j	800018b8 <_Z18getOptimalSlabSizem+0x34>
    800018b4:	00168693          	addi	a3,a3,1
    800018b8:	00400713          	li	a4,4
    800018bc:	02d76063          	bltu	a4,a3,800018dc <_Z18getOptimalSlabSizem+0x58>
    {
        size_t newSize = bestSize << i;
    800018c0:	00d79633          	sll	a2,a5,a3
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
    800018c4:	f5860713          	addi	a4,a2,-168
    800018c8:	02a77733          	remu	a4,a4,a0
        if(newWaste < optimalWaste)
    800018cc:	feb774e3          	bgeu	a4,a1,800018b4 <_Z18getOptimalSlabSizem+0x30>
        {
            optimalWaste = newWaste;
    800018d0:	00070593          	mv	a1,a4
            bestSize = newSize;
    800018d4:	00060793          	mv	a5,a2
    800018d8:	fddff06f          	j	800018b4 <_Z18getOptimalSlabSizem+0x30>
        }
    }

    return bestSize / BLOCK_SIZE;
}
    800018dc:	00c7d513          	srli	a0,a5,0xc
    800018e0:	00813403          	ld	s0,8(sp)
    800018e4:	01010113          	addi	sp,sp,16
    800018e8:	00008067          	ret

00000000800018ec <_Z8findSlabP12kmem_cache_sPKv>:
    return nullptr;
}*/

//finds the slab where objp is
slab_t* findSlab(kmem_cache_t* cachep, const void* objp)
{
    800018ec:	ff010113          	addi	sp,sp,-16
    800018f0:	00813423          	sd	s0,8(sp)
    800018f4:	01010413          	addi	s0,sp,16
    800018f8:	00050693          	mv	a3,a0
    if(cachep == nullptr || objp == nullptr)
    800018fc:	02050c63          	beqz	a0,80001934 <_Z8findSlabP12kmem_cache_sPKv+0x48>
    80001900:	06058a63          	beqz	a1,80001974 <_Z8findSlabP12kmem_cache_sPKv+0x88>
        return nullptr;
    slab_t* slab = cachep->slabs_full;
    80001904:	04853503          	ld	a0,72(a0)
    80001908:	0080006f          	j	80001910 <_Z8findSlabP12kmem_cache_sPKv+0x24>
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    8000190c:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    80001910:	02050863          	beqz	a0,80001940 <_Z8findSlabP12kmem_cache_sPKv+0x54>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001914:	01853783          	ld	a5,24(a0)
    80001918:	01053703          	ld	a4,16(a0)
    8000191c:	06073703          	ld	a4,96(a4)
    80001920:	02e787b3          	mul	a5,a5,a4
    80001924:	00a787b3          	add	a5,a5,a0
    80001928:	0a878793          	addi	a5,a5,168
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    8000192c:	feb570e3          	bgeu	a0,a1,8000190c <_Z8findSlabP12kmem_cache_sPKv+0x20>
    80001930:	fcf5fee3          	bgeu	a1,a5,8000190c <_Z8findSlabP12kmem_cache_sPKv+0x20>
            return slab;
        slab = slab->next;
    }

    return nullptr;
}
    80001934:	00813403          	ld	s0,8(sp)
    80001938:	01010113          	addi	sp,sp,16
    8000193c:	00008067          	ret
    slab = cachep->slabs_partial;
    80001940:	0506b503          	ld	a0,80(a3)
    80001944:	0080006f          	j	8000194c <_Z8findSlabP12kmem_cache_sPKv+0x60>
        slab = slab->next;
    80001948:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    8000194c:	fe0504e3          	beqz	a0,80001934 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001950:	01853783          	ld	a5,24(a0)
    80001954:	01053703          	ld	a4,16(a0)
    80001958:	06073703          	ld	a4,96(a4)
    8000195c:	02e787b3          	mul	a5,a5,a4
    80001960:	00a787b3          	add	a5,a5,a0
    80001964:	0a878793          	addi	a5,a5,168
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    80001968:	feb570e3          	bgeu	a0,a1,80001948 <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    8000196c:	fcf5fee3          	bgeu	a1,a5,80001948 <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    80001970:	fc5ff06f          	j	80001934 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        return nullptr;
    80001974:	00058513          	mv	a0,a1
    80001978:	fbdff06f          	j	80001934 <_Z8findSlabP12kmem_cache_sPKv+0x48>

000000008000197c <_Z19resetAllocatedIndexP6slab_si>:

void resetAllocatedIndex(slab_t* slab, int index)
{
    8000197c:	ff010113          	addi	sp,sp,-16
    80001980:	00813423          	sd	s0,8(sp)
    80001984:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] & ~(1 << (index%8));
    80001988:	41f5d79b          	sraiw	a5,a1,0x1f
    8000198c:	01d7d79b          	srliw	a5,a5,0x1d
    80001990:	00b785bb          	addw	a1,a5,a1
    80001994:	4035d71b          	sraiw	a4,a1,0x3
    80001998:	00e50533          	add	a0,a0,a4
    8000199c:	02850703          	lb	a4,40(a0)
    800019a0:	0075f593          	andi	a1,a1,7
    800019a4:	40f585bb          	subw	a1,a1,a5
    800019a8:	00100793          	li	a5,1
    800019ac:	00b795bb          	sllw	a1,a5,a1
    800019b0:	fff5c593          	not	a1,a1
    800019b4:	00b775b3          	and	a1,a4,a1
    800019b8:	02b50423          	sb	a1,40(a0)
}
    800019bc:	00813403          	ld	s0,8(sp)
    800019c0:	01010113          	addi	sp,sp,16
    800019c4:	00008067          	ret

00000000800019c8 <_Z13printSlabInfoP6slab_s>:

void printSlabInfo(slab_t* slab)
{
    800019c8:	fe010113          	addi	sp,sp,-32
    800019cc:	00113c23          	sd	ra,24(sp)
    800019d0:	00813823          	sd	s0,16(sp)
    800019d4:	00913423          	sd	s1,8(sp)
    800019d8:	01213023          	sd	s2,0(sp)
    800019dc:	02010413          	addi	s0,sp,32
    800019e0:	00050913          	mv	s2,a0
    KConsole::trapPrintString("One slab info---------\n");
    800019e4:	00007517          	auipc	a0,0x7
    800019e8:	64c50513          	addi	a0,a0,1612 # 80009030 <CONSOLE_STATUS+0x20>
    800019ec:	00002097          	auipc	ra,0x2
    800019f0:	db8080e7          	jalr	-584(ra) # 800037a4 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab address ",(size_t)slab,16);
    800019f4:	01000613          	li	a2,16
    800019f8:	00090593          	mv	a1,s2
    800019fc:	00007517          	auipc	a0,0x7
    80001a00:	64c50513          	addi	a0,a0,1612 # 80009048 <CONSOLE_STATUS+0x38>
    80001a04:	00002097          	auipc	ra,0x2
    80001a08:	e78080e7          	jalr	-392(ra) # 8000387c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of allocated objects ",slab->numOfAllocatedObjects);
    80001a0c:	00a00613          	li	a2,10
    80001a10:	02093583          	ld	a1,32(s2)
    80001a14:	00007517          	auipc	a0,0x7
    80001a18:	64450513          	addi	a0,a0,1604 # 80009058 <CONSOLE_STATUS+0x48>
    80001a1c:	00002097          	auipc	ra,0x2
    80001a20:	e60080e7          	jalr	-416(ra) # 8000387c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of objects ", slab->numOfObjects);
    80001a24:	00a00613          	li	a2,10
    80001a28:	01893583          	ld	a1,24(s2)
    80001a2c:	00007517          	auipc	a0,0x7
    80001a30:	64c50513          	addi	a0,a0,1612 # 80009078 <CONSOLE_STATUS+0x68>
    80001a34:	00002097          	auipc	ra,0x2
    80001a38:	e48080e7          	jalr	-440(ra) # 8000387c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    for(size_t i = 0;i < (slab->numOfObjects + 7) / 8;i++)
    80001a3c:	00000493          	li	s1,0
    80001a40:	01893783          	ld	a5,24(s2)
    80001a44:	00778793          	addi	a5,a5,7
    80001a48:	0037d793          	srli	a5,a5,0x3
    80001a4c:	02f4fa63          	bgeu	s1,a5,80001a80 <_Z13printSlabInfoP6slab_s+0xb8>
    {
        KConsole::trapPrintInt((size_t)slab->allocated[i], 16);
    80001a50:	009907b3          	add	a5,s2,s1
    80001a54:	00000613          	li	a2,0
    80001a58:	01000593          	li	a1,16
    80001a5c:	0287c503          	lbu	a0,40(a5)
    80001a60:	00002097          	auipc	ra,0x2
    80001a64:	d88080e7          	jalr	-632(ra) # 800037e8 <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    80001a68:	00008517          	auipc	a0,0x8
    80001a6c:	c9050513          	addi	a0,a0,-880 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80001a70:	00002097          	auipc	ra,0x2
    80001a74:	d34080e7          	jalr	-716(ra) # 800037a4 <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < (slab->numOfObjects + 7) / 8;i++)
    80001a78:	00148493          	addi	s1,s1,1
    80001a7c:	fc5ff06f          	j	80001a40 <_Z13printSlabInfoP6slab_s+0x78>
    }
}
    80001a80:	01813083          	ld	ra,24(sp)
    80001a84:	01013403          	ld	s0,16(sp)
    80001a88:	00813483          	ld	s1,8(sp)
    80001a8c:	00013903          	ld	s2,0(sp)
    80001a90:	02010113          	addi	sp,sp,32
    80001a94:	00008067          	ret

0000000080001a98 <_Z16free_slab_objectP6slab_sPKv>:

void free_slab_object(slab_t* slab, const void* objp)
{
    if(slab == nullptr || objp == nullptr)
    80001a98:	10050263          	beqz	a0,80001b9c <_Z16free_slab_objectP6slab_sPKv+0x104>
{
    80001a9c:	fe010113          	addi	sp,sp,-32
    80001aa0:	00113c23          	sd	ra,24(sp)
    80001aa4:	00813823          	sd	s0,16(sp)
    80001aa8:	00913423          	sd	s1,8(sp)
    80001aac:	01213023          	sd	s2,0(sp)
    80001ab0:	02010413          	addi	s0,sp,32
    80001ab4:	00050493          	mv	s1,a0
    if(slab == nullptr || objp == nullptr)
    80001ab8:	02058e63          	beqz	a1,80001af4 <_Z16free_slab_objectP6slab_sPKv+0x5c>
        return;
    int indexOfObject = ((size_t)objp - sizeof(slab_t) - (size_t)slab) / slab->owner->obj_size;
    80001abc:	40a58933          	sub	s2,a1,a0
    80001ac0:	f5890913          	addi	s2,s2,-168
    80001ac4:	01053783          	ld	a5,16(a0)
    80001ac8:	0607b783          	ld	a5,96(a5)
    80001acc:	02f95933          	divu	s2,s2,a5
    80001ad0:	0009091b          	sext.w	s2,s2
    if((size_t)objp != (size_t)slab + sizeof(slab_t) + indexOfObject*slab->owner->obj_size) //address not allocated, random address
    80001ad4:	032787b3          	mul	a5,a5,s2
    80001ad8:	00f507b3          	add	a5,a0,a5
    80001adc:	0a878793          	addi	a5,a5,168
    80001ae0:	00f59a63          	bne	a1,a5,80001af4 <_Z16free_slab_objectP6slab_sPKv+0x5c>
        return;

    if(!checkSetIndex(slab, indexOfObject))
    80001ae4:	00090593          	mv	a1,s2
    80001ae8:	00000097          	auipc	ra,0x0
    80001aec:	938080e7          	jalr	-1736(ra) # 80001420 <_Z13checkSetIndexP6slab_si>
    80001af0:	00051e63          	bnez	a0,80001b0c <_Z16free_slab_objectP6slab_sPKv+0x74>
        removePartialSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
    }
    else
        slab->numOfAllocatedObjects--;
}
    80001af4:	01813083          	ld	ra,24(sp)
    80001af8:	01013403          	ld	s0,16(sp)
    80001afc:	00813483          	ld	s1,8(sp)
    80001b00:	00013903          	ld	s2,0(sp)
    80001b04:	02010113          	addi	sp,sp,32
    80001b08:	00008067          	ret
    resetAllocatedIndex(slab, indexOfObject);
    80001b0c:	00090593          	mv	a1,s2
    80001b10:	00048513          	mv	a0,s1
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	e68080e7          	jalr	-408(ra) # 8000197c <_Z19resetAllocatedIndexP6slab_si>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
    80001b1c:	0184b703          	ld	a4,24(s1)
    80001b20:	0204b783          	ld	a5,32(s1)
    80001b24:	00f70c63          	beq	a4,a5,80001b3c <_Z16free_slab_objectP6slab_sPKv+0xa4>
    else if(slab->numOfAllocatedObjects == 1)
    80001b28:	00100713          	li	a4,1
    80001b2c:	04e78863          	beq	a5,a4,80001b7c <_Z16free_slab_objectP6slab_sPKv+0xe4>
        slab->numOfAllocatedObjects--;
    80001b30:	fff78793          	addi	a5,a5,-1
    80001b34:	02f4b023          	sd	a5,32(s1)
    80001b38:	fbdff06f          	j	80001af4 <_Z16free_slab_objectP6slab_sPKv+0x5c>
        removeFullSlab(slab->owner, slab);
    80001b3c:	00048593          	mv	a1,s1
    80001b40:	0104b503          	ld	a0,16(s1)
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	ba4080e7          	jalr	-1116(ra) # 800016e8 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001b4c:	0204b783          	ld	a5,32(s1)
    80001b50:	fff78793          	addi	a5,a5,-1
    80001b54:	02f4b023          	sd	a5,32(s1)
        if(empty(slab))
    80001b58:	00048513          	mv	a0,s1
    80001b5c:	00000097          	auipc	ra,0x0
    80001b60:	a2c080e7          	jalr	-1492(ra) # 80001588 <_Z5emptyP6slab_s>
    80001b64:	f80508e3          	beqz	a0,80001af4 <_Z16free_slab_objectP6slab_sPKv+0x5c>
            removePartialSlab(slab->owner, slab);
    80001b68:	00048593          	mv	a1,s1
    80001b6c:	0104b503          	ld	a0,16(s1)
    80001b70:	00000097          	auipc	ra,0x0
    80001b74:	bd0080e7          	jalr	-1072(ra) # 80001740 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
    80001b78:	f7dff06f          	j	80001af4 <_Z16free_slab_objectP6slab_sPKv+0x5c>
        removePartialSlab(slab->owner, slab);
    80001b7c:	00048593          	mv	a1,s1
    80001b80:	0104b503          	ld	a0,16(s1)
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	bbc080e7          	jalr	-1092(ra) # 80001740 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001b8c:	0204b783          	ld	a5,32(s1)
    80001b90:	fff78793          	addi	a5,a5,-1
    80001b94:	02f4b023          	sd	a5,32(s1)
    80001b98:	f5dff06f          	j	80001af4 <_Z16free_slab_objectP6slab_sPKv+0x5c>
    80001b9c:	00008067          	ret

0000000080001ba0 <_Z9kmem_initPvi>:
    }
}

//slab allocator public interface-----------------------------------------------------------------------------
void kmem_init(void *space, int block_num)
{
    80001ba0:	ff010113          	addi	sp,sp,-16
    80001ba4:	00113423          	sd	ra,8(sp)
    80001ba8:	00813023          	sd	s0,0(sp)
    80001bac:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init(space, block_num);
    80001bb0:	00001097          	auipc	ra,0x1
    80001bb4:	4d4080e7          	jalr	1236(ra) # 80003084 <_Z10buddy_initPvm>
    slabAllocator = slab_allocator_init(buddy);
    80001bb8:	fffff097          	auipc	ra,0xfffff
    80001bbc:	7f0080e7          	jalr	2032(ra) # 800013a8 <_Z19slab_allocator_initP14buddyAllocator>
    80001bc0:	0000a797          	auipc	a5,0xa
    80001bc4:	faa7b023          	sd	a0,-96(a5) # 8000bb60 <_ZL13slabAllocator>
}
    80001bc8:	00813083          	ld	ra,8(sp)
    80001bcc:	00013403          	ld	s0,0(sp)
    80001bd0:	01010113          	addi	sp,sp,16
    80001bd4:	00008067          	ret

0000000080001bd8 <_Z16kmem_cache_allocP12kmem_cache_s>:
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    return newCache;
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    80001bd8:	fe010113          	addi	sp,sp,-32
    80001bdc:	00113c23          	sd	ra,24(sp)
    80001be0:	00813823          	sd	s0,16(sp)
    80001be4:	00913423          	sd	s1,8(sp)
    80001be8:	01213023          	sd	s2,0(sp)
    80001bec:	02010413          	addi	s0,sp,32
    80001bf0:	00050493          	mv	s1,a0
    if(cachep == nullptr)
    80001bf4:	10050a63          	beqz	a0,80001d08 <_Z16kmem_cache_allocP12kmem_cache_s+0x130>
        return nullptr;

    if(cachep->slabs_partial != nullptr)
    80001bf8:	05053503          	ld	a0,80(a0)
    80001bfc:	04051a63          	bnez	a0,80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x78>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
        if(full(cachep->slabs_partial))
            putPartialToFull(cachep);
        return allocatedAddr;
    }
    else if(cachep->slabs_empty != nullptr)
    80001c00:	0404b503          	ld	a0,64(s1)
    80001c04:	08050a63          	beqz	a0,80001c98 <_Z16kmem_cache_allocP12kmem_cache_s+0xc0>
    {
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	8a0080e7          	jalr	-1888(ra) # 800014a8 <_Z14allocateObjectP6slab_s>
    80001c10:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001c14:	0404b503          	ld	a0,64(s1)
    80001c18:	00000097          	auipc	ra,0x0
    80001c1c:	970080e7          	jalr	-1680(ra) # 80001588 <_Z5emptyP6slab_s>
    80001c20:	04051663          	bnez	a0,80001c6c <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        {
            putEmptyToPartial(cachep);
    80001c24:	00048513          	mv	a0,s1
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	a68080e7          	jalr	-1432(ra) # 80001690 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001c30:	0504b503          	ld	a0,80(s1)
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	92c080e7          	jalr	-1748(ra) # 80001560 <_Z4fullP6slab_s>
    80001c3c:	02050863          	beqz	a0,80001c6c <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001c40:	00048513          	mv	a0,s1
    80001c44:	00000097          	auipc	ra,0x0
    80001c48:	9f4080e7          	jalr	-1548(ra) # 80001638 <_Z16putPartialToFullP12kmem_cache_s>
        }
        return allocatedAddr;
    80001c4c:	0200006f          	j	80001c6c <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
    80001c50:	00000097          	auipc	ra,0x0
    80001c54:	858080e7          	jalr	-1960(ra) # 800014a8 <_Z14allocateObjectP6slab_s>
    80001c58:	00050913          	mv	s2,a0
        if(full(cachep->slabs_partial))
    80001c5c:	0504b503          	ld	a0,80(s1)
    80001c60:	00000097          	auipc	ra,0x0
    80001c64:	900080e7          	jalr	-1792(ra) # 80001560 <_Z4fullP6slab_s>
    80001c68:	02051063          	bnez	a0,80001c88 <_Z16kmem_cache_allocP12kmem_cache_s+0xb0>
                putPartialToFull(cachep);
        }
        return allocatedAddr;
    }
    return nullptr;
}
    80001c6c:	00090513          	mv	a0,s2
    80001c70:	01813083          	ld	ra,24(sp)
    80001c74:	01013403          	ld	s0,16(sp)
    80001c78:	00813483          	ld	s1,8(sp)
    80001c7c:	00013903          	ld	s2,0(sp)
    80001c80:	02010113          	addi	sp,sp,32
    80001c84:	00008067          	ret
            putPartialToFull(cachep);
    80001c88:	00048513          	mv	a0,s1
    80001c8c:	00000097          	auipc	ra,0x0
    80001c90:	9ac080e7          	jalr	-1620(ra) # 80001638 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001c94:	fd9ff06f          	j	80001c6c <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        allocateSlab(cachep);
    80001c98:	00048513          	mv	a0,s1
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	afc080e7          	jalr	-1284(ra) # 80001798 <_Z12allocateSlabP12kmem_cache_s>
        if(cachep->slabs_empty == nullptr)
    80001ca4:	0404b903          	ld	s2,64(s1)
    80001ca8:	04090863          	beqz	s2,80001cf8 <_Z16kmem_cache_allocP12kmem_cache_s+0x120>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001cac:	00090513          	mv	a0,s2
    80001cb0:	fffff097          	auipc	ra,0xfffff
    80001cb4:	7f8080e7          	jalr	2040(ra) # 800014a8 <_Z14allocateObjectP6slab_s>
    80001cb8:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001cbc:	0404b503          	ld	a0,64(s1)
    80001cc0:	00000097          	auipc	ra,0x0
    80001cc4:	8c8080e7          	jalr	-1848(ra) # 80001588 <_Z5emptyP6slab_s>
    80001cc8:	fa0512e3          	bnez	a0,80001c6c <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            putEmptyToPartial(cachep);
    80001ccc:	00048513          	mv	a0,s1
    80001cd0:	00000097          	auipc	ra,0x0
    80001cd4:	9c0080e7          	jalr	-1600(ra) # 80001690 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001cd8:	0504b503          	ld	a0,80(s1)
    80001cdc:	00000097          	auipc	ra,0x0
    80001ce0:	884080e7          	jalr	-1916(ra) # 80001560 <_Z4fullP6slab_s>
    80001ce4:	f80504e3          	beqz	a0,80001c6c <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001ce8:	00048513          	mv	a0,s1
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	94c080e7          	jalr	-1716(ra) # 80001638 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001cf4:	f79ff06f          	j	80001c6c <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            cachep->errors|=EXPAND_ERROR;
    80001cf8:	0784a783          	lw	a5,120(s1)
    80001cfc:	0017e793          	ori	a5,a5,1
    80001d00:	06f4ac23          	sw	a5,120(s1)
            return nullptr;
    80001d04:	f69ff06f          	j	80001c6c <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        return nullptr;
    80001d08:	00050913          	mv	s2,a0
    80001d0c:	f61ff06f          	j	80001c6c <_Z16kmem_cache_allocP12kmem_cache_s+0x94>

0000000080001d10 <_Z17kmem_cache_createPKcmPFvPvES3_>:
{
    80001d10:	fc010113          	addi	sp,sp,-64
    80001d14:	02113c23          	sd	ra,56(sp)
    80001d18:	02813823          	sd	s0,48(sp)
    80001d1c:	02913423          	sd	s1,40(sp)
    80001d20:	03213023          	sd	s2,32(sp)
    80001d24:	01313c23          	sd	s3,24(sp)
    80001d28:	01413823          	sd	s4,16(sp)
    80001d2c:	01513423          	sd	s5,8(sp)
    80001d30:	04010413          	addi	s0,sp,64
    80001d34:	00050993          	mv	s3,a0
    80001d38:	00058913          	mv	s2,a1
    80001d3c:	00060a13          	mv	s4,a2
    80001d40:	00068a93          	mv	s5,a3
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001d44:	0000a517          	auipc	a0,0xa
    80001d48:	e1c53503          	ld	a0,-484(a0) # 8000bb60 <_ZL13slabAllocator>
    80001d4c:	07050513          	addi	a0,a0,112
    80001d50:	00000097          	auipc	ra,0x0
    80001d54:	e88080e7          	jalr	-376(ra) # 80001bd8 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001d58:	00050493          	mv	s1,a0
    if(newCache == nullptr)
    80001d5c:	02050863          	beqz	a0,80001d8c <_Z17kmem_cache_createPKcmPFvPvES3_+0x7c>
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    80001d60:	00090513          	mv	a0,s2
    80001d64:	00000097          	auipc	ra,0x0
    80001d68:	b20080e7          	jalr	-1248(ra) # 80001884 <_Z18getOptimalSlabSizem>
    80001d6c:	00050613          	mv	a2,a0
    80001d70:	000a8793          	mv	a5,s5
    80001d74:	000a0713          	mv	a4,s4
    80001d78:	00090693          	mv	a3,s2
    80001d7c:	00098593          	mv	a1,s3
    80001d80:	00048513          	mv	a0,s1
    80001d84:	fffff097          	auipc	ra,0xfffff
    80001d88:	598080e7          	jalr	1432(ra) # 8000131c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
}
    80001d8c:	00048513          	mv	a0,s1
    80001d90:	03813083          	ld	ra,56(sp)
    80001d94:	03013403          	ld	s0,48(sp)
    80001d98:	02813483          	ld	s1,40(sp)
    80001d9c:	02013903          	ld	s2,32(sp)
    80001da0:	01813983          	ld	s3,24(sp)
    80001da4:	01013a03          	ld	s4,16(sp)
    80001da8:	00813a83          	ld	s5,8(sp)
    80001dac:	04010113          	addi	sp,sp,64
    80001db0:	00008067          	ret

0000000080001db4 <_Z15kmem_cache_freeP12kmem_cache_sPv>:

void kmem_cache_free(kmem_cache_t *cachep, void *objp)
{
    if(cachep == nullptr || objp == nullptr)
    80001db4:	08050463          	beqz	a0,80001e3c <_Z15kmem_cache_freeP12kmem_cache_sPv+0x88>
{
    80001db8:	fd010113          	addi	sp,sp,-48
    80001dbc:	02113423          	sd	ra,40(sp)
    80001dc0:	02813023          	sd	s0,32(sp)
    80001dc4:	00913c23          	sd	s1,24(sp)
    80001dc8:	01213823          	sd	s2,16(sp)
    80001dcc:	01313423          	sd	s3,8(sp)
    80001dd0:	03010413          	addi	s0,sp,48
    80001dd4:	00050913          	mv	s2,a0
    80001dd8:	00058493          	mv	s1,a1
    if(cachep == nullptr || objp == nullptr)
    80001ddc:	04058263          	beqz	a1,80001e20 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x6c>
        return;
    slab_t* slab = findSlab(cachep, objp);
    80001de0:	00000097          	auipc	ra,0x0
    80001de4:	b0c080e7          	jalr	-1268(ra) # 800018ec <_Z8findSlabP12kmem_cache_sPKv>
    80001de8:	00050993          	mv	s3,a0
    if(slab == nullptr) return;
    80001dec:	02050a63          	beqz	a0,80001e20 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x6c>

    //TODO
    //test it
    if(cachep->dtor != nullptr)
    80001df0:	07093783          	ld	a5,112(s2)
    80001df4:	00078663          	beqz	a5,80001e00 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x4c>
        cachep->dtor(objp);
    80001df8:	00048513          	mv	a0,s1
    80001dfc:	000780e7          	jalr	a5
    if(cachep->ctor != nullptr)
    80001e00:	06893783          	ld	a5,104(s2)
    80001e04:	00078663          	beqz	a5,80001e10 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x5c>
        cachep->ctor(objp);
    80001e08:	00048513          	mv	a0,s1
    80001e0c:	000780e7          	jalr	a5

    free_slab_object(slab, objp);
    80001e10:	00048593          	mv	a1,s1
    80001e14:	00098513          	mv	a0,s3
    80001e18:	00000097          	auipc	ra,0x0
    80001e1c:	c80080e7          	jalr	-896(ra) # 80001a98 <_Z16free_slab_objectP6slab_sPKv>
}
    80001e20:	02813083          	ld	ra,40(sp)
    80001e24:	02013403          	ld	s0,32(sp)
    80001e28:	01813483          	ld	s1,24(sp)
    80001e2c:	01013903          	ld	s2,16(sp)
    80001e30:	00813983          	ld	s3,8(sp)
    80001e34:	03010113          	addi	sp,sp,48
    80001e38:	00008067          	ret
    80001e3c:	00008067          	ret

0000000080001e40 <_Z15kmem_cache_infoP12kmem_cache_s>:

//TODO what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    80001e40:	12050c63          	beqz	a0,80001f78 <_Z15kmem_cache_infoP12kmem_cache_s+0x138>
{
    80001e44:	fe010113          	addi	sp,sp,-32
    80001e48:	00113c23          	sd	ra,24(sp)
    80001e4c:	00813823          	sd	s0,16(sp)
    80001e50:	00913423          	sd	s1,8(sp)
    80001e54:	01213023          	sd	s2,0(sp)
    80001e58:	02010413          	addi	s0,sp,32
    80001e5c:	00050913          	mv	s2,a0
        return;
    KConsole::trapPrintString("Kmem Cache Info-------------------------------------\n");
    80001e60:	00007517          	auipc	a0,0x7
    80001e64:	23050513          	addi	a0,a0,560 # 80009090 <CONSOLE_STATUS+0x80>
    80001e68:	00002097          	auipc	ra,0x2
    80001e6c:	93c080e7          	jalr	-1732(ra) # 800037a4 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache Name ");
    80001e70:	00007517          	auipc	a0,0x7
    80001e74:	25850513          	addi	a0,a0,600 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001e78:	00002097          	auipc	ra,0x2
    80001e7c:	92c080e7          	jalr	-1748(ra) # 800037a4 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString(cachep->cacheName); KConsole::trapPrintString("\n");
    80001e80:	00090513          	mv	a0,s2
    80001e84:	00002097          	auipc	ra,0x2
    80001e88:	920080e7          	jalr	-1760(ra) # 800037a4 <_ZN8KConsole15trapPrintStringEPKc>
    80001e8c:	00008517          	auipc	a0,0x8
    80001e90:	86c50513          	addi	a0,a0,-1940 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80001e94:	00002097          	auipc	ra,0x2
    80001e98:	910080e7          	jalr	-1776(ra) # 800037a4 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Cache slab size in blocks ", cachep->slab_size);
    80001e9c:	00a00613          	li	a2,10
    80001ea0:	05893583          	ld	a1,88(s2)
    80001ea4:	00007517          	auipc	a0,0x7
    80001ea8:	23450513          	addi	a0,a0,564 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001eac:	00002097          	auipc	ra,0x2
    80001eb0:	9d0080e7          	jalr	-1584(ra) # 8000387c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Cache obj size in bytes ", cachep->obj_size);
    80001eb4:	00a00613          	li	a2,10
    80001eb8:	06093583          	ld	a1,96(s2)
    80001ebc:	00007517          	auipc	a0,0x7
    80001ec0:	23c50513          	addi	a0,a0,572 # 800090f8 <CONSOLE_STATUS+0xe8>
    80001ec4:	00002097          	auipc	ra,0x2
    80001ec8:	9b8080e7          	jalr	-1608(ra) # 8000387c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    
    KConsole::trapPrintString("Slabs info-------------------\n");
    80001ecc:	00007517          	auipc	a0,0x7
    80001ed0:	24c50513          	addi	a0,a0,588 # 80009118 <CONSOLE_STATUS+0x108>
    80001ed4:	00002097          	auipc	ra,0x2
    80001ed8:	8d0080e7          	jalr	-1840(ra) # 800037a4 <_ZN8KConsole15trapPrintStringEPKc>

    KConsole::trapPrintString("Full slabs\n");
    80001edc:	00007517          	auipc	a0,0x7
    80001ee0:	25c50513          	addi	a0,a0,604 # 80009138 <CONSOLE_STATUS+0x128>
    80001ee4:	00002097          	auipc	ra,0x2
    80001ee8:	8c0080e7          	jalr	-1856(ra) # 800037a4 <_ZN8KConsole15trapPrintStringEPKc>
    slab_t* slab = cachep->slabs_full;
    80001eec:	04893483          	ld	s1,72(s2)
    while(slab != nullptr)
    80001ef0:	00048c63          	beqz	s1,80001f08 <_Z15kmem_cache_infoP12kmem_cache_s+0xc8>
    {
        printSlabInfo(slab);
    80001ef4:	00048513          	mv	a0,s1
    80001ef8:	00000097          	auipc	ra,0x0
    80001efc:	ad0080e7          	jalr	-1328(ra) # 800019c8 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001f00:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f04:	fedff06f          	j	80001ef0 <_Z15kmem_cache_infoP12kmem_cache_s+0xb0>
    }

    KConsole::trapPrintString("Partial slabs\n");
    80001f08:	00007517          	auipc	a0,0x7
    80001f0c:	24050513          	addi	a0,a0,576 # 80009148 <CONSOLE_STATUS+0x138>
    80001f10:	00002097          	auipc	ra,0x2
    80001f14:	894080e7          	jalr	-1900(ra) # 800037a4 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_partial;
    80001f18:	05093483          	ld	s1,80(s2)
    while(slab != nullptr)
    80001f1c:	00048c63          	beqz	s1,80001f34 <_Z15kmem_cache_infoP12kmem_cache_s+0xf4>
    {
        printSlabInfo(slab);
    80001f20:	00048513          	mv	a0,s1
    80001f24:	00000097          	auipc	ra,0x0
    80001f28:	aa4080e7          	jalr	-1372(ra) # 800019c8 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001f2c:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f30:	fedff06f          	j	80001f1c <_Z15kmem_cache_infoP12kmem_cache_s+0xdc>
    }

    KConsole::trapPrintString("Empty slabs\n");
    80001f34:	00007517          	auipc	a0,0x7
    80001f38:	22450513          	addi	a0,a0,548 # 80009158 <CONSOLE_STATUS+0x148>
    80001f3c:	00002097          	auipc	ra,0x2
    80001f40:	868080e7          	jalr	-1944(ra) # 800037a4 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_empty;
    80001f44:	04093483          	ld	s1,64(s2)
    while(slab != nullptr)
    80001f48:	00048c63          	beqz	s1,80001f60 <_Z15kmem_cache_infoP12kmem_cache_s+0x120>
    {
        printSlabInfo(slab);
    80001f4c:	00048513          	mv	a0,s1
    80001f50:	00000097          	auipc	ra,0x0
    80001f54:	a78080e7          	jalr	-1416(ra) # 800019c8 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001f58:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f5c:	fedff06f          	j	80001f48 <_Z15kmem_cache_infoP12kmem_cache_s+0x108>
    }
}
    80001f60:	01813083          	ld	ra,24(sp)
    80001f64:	01013403          	ld	s0,16(sp)
    80001f68:	00813483          	ld	s1,8(sp)
    80001f6c:	00013903          	ld	s2,0(sp)
    80001f70:	02010113          	addi	sp,sp,32
    80001f74:	00008067          	ret
    80001f78:	00008067          	ret

0000000080001f7c <_Z22printSlabAllocatorInfov>:
{
    80001f7c:	fe010113          	addi	sp,sp,-32
    80001f80:	00113c23          	sd	ra,24(sp)
    80001f84:	00813823          	sd	s0,16(sp)
    80001f88:	00913423          	sd	s1,8(sp)
    80001f8c:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("Slab allocator info----------------------------------------------------------\n");
    80001f90:	00007517          	auipc	a0,0x7
    80001f94:	1d850513          	addi	a0,a0,472 # 80009168 <CONSOLE_STATUS+0x158>
    80001f98:	00002097          	auipc	ra,0x2
    80001f9c:	80c080e7          	jalr	-2036(ra) # 800037a4 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab allocator buddy address ", (size_t)slabAllocator->buddy,16);
    80001fa0:	0000a497          	auipc	s1,0xa
    80001fa4:	bc048493          	addi	s1,s1,-1088 # 8000bb60 <_ZL13slabAllocator>
    80001fa8:	0004b783          	ld	a5,0(s1)
    80001fac:	01000613          	li	a2,16
    80001fb0:	0007b583          	ld	a1,0(a5)
    80001fb4:	00007517          	auipc	a0,0x7
    80001fb8:	20450513          	addi	a0,a0,516 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80001fbc:	00002097          	auipc	ra,0x2
    80001fc0:	8c0080e7          	jalr	-1856(ra) # 8000387c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Slab allocator address ", (size_t)slabAllocator, 16);
    80001fc4:	01000613          	li	a2,16
    80001fc8:	0004b583          	ld	a1,0(s1)
    80001fcc:	00007517          	auipc	a0,0x7
    80001fd0:	20c50513          	addi	a0,a0,524 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80001fd4:	00002097          	auipc	ra,0x2
    80001fd8:	8a8080e7          	jalr	-1880(ra) # 8000387c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintString("Cache of caches info\n");
    80001fdc:	00007517          	auipc	a0,0x7
    80001fe0:	21450513          	addi	a0,a0,532 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80001fe4:	00001097          	auipc	ra,0x1
    80001fe8:	7c0080e7          	jalr	1984(ra) # 800037a4 <_ZN8KConsole15trapPrintStringEPKc>
    kmem_cache_info(&slabAllocator->cacheOfCaches);
    80001fec:	0004b503          	ld	a0,0(s1)
    80001ff0:	07050513          	addi	a0,a0,112
    80001ff4:	00000097          	auipc	ra,0x0
    80001ff8:	e4c080e7          	jalr	-436(ra) # 80001e40 <_Z15kmem_cache_infoP12kmem_cache_s>
    KConsole::trapPrintString("Caches for buffers\n");
    80001ffc:	00007517          	auipc	a0,0x7
    80002000:	20c50513          	addi	a0,a0,524 # 80009208 <CONSOLE_STATUS+0x1f8>
    80002004:	00001097          	auipc	ra,0x1
    80002008:	7a0080e7          	jalr	1952(ra) # 800037a4 <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    8000200c:	00000493          	li	s1,0
    80002010:	0100006f          	j	80002020 <_Z22printSlabAllocatorInfov+0xa4>
            kmem_cache_info(slabAllocator->cachesBuffers[i]);
    80002014:	00000097          	auipc	ra,0x0
    80002018:	e2c080e7          	jalr	-468(ra) # 80001e40 <_Z15kmem_cache_infoP12kmem_cache_s>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    8000201c:	00148493          	addi	s1,s1,1
    80002020:	00c00793          	li	a5,12
    80002024:	0297e063          	bltu	a5,s1,80002044 <_Z22printSlabAllocatorInfov+0xc8>
        if(slabAllocator->cachesBuffers[i] != nullptr)
    80002028:	00349793          	slli	a5,s1,0x3
    8000202c:	0000a717          	auipc	a4,0xa
    80002030:	b3473703          	ld	a4,-1228(a4) # 8000bb60 <_ZL13slabAllocator>
    80002034:	00f707b3          	add	a5,a4,a5
    80002038:	0087b503          	ld	a0,8(a5)
    8000203c:	fc051ce3          	bnez	a0,80002014 <_Z22printSlabAllocatorInfov+0x98>
    80002040:	fddff06f          	j	8000201c <_Z22printSlabAllocatorInfov+0xa0>
}
    80002044:	01813083          	ld	ra,24(sp)
    80002048:	01013403          	ld	s0,16(sp)
    8000204c:	00813483          	ld	s1,8(sp)
    80002050:	02010113          	addi	sp,sp,32
    80002054:	00008067          	ret

0000000080002058 <_Z7kmallocm>:

void *kmalloc(size_t size)
{
    80002058:	fd010113          	addi	sp,sp,-48
    8000205c:	02113423          	sd	ra,40(sp)
    80002060:	02813023          	sd	s0,32(sp)
    80002064:	00913c23          	sd	s1,24(sp)
    80002068:	01213823          	sd	s2,16(sp)
    8000206c:	01313423          	sd	s3,8(sp)
    80002070:	03010413          	addi	s0,sp,48
    80002074:	00050993          	mv	s3,a0
    size_t level = getDeg2Ceil(size);
    80002078:	00001097          	auipc	ra,0x1
    8000207c:	c80080e7          	jalr	-896(ra) # 80002cf8 <_Z11getDeg2Ceilm>
    if(level < CACHE_BUFFER_SMALL)
    80002080:	00400793          	li	a5,4
    80002084:	00a7fa63          	bgeu	a5,a0,80002098 <_Z7kmallocm+0x40>
        level = CACHE_BUFFER_SMALL;
    if(level > CACHE_BUFFER_BIG)
    80002088:	01100793          	li	a5,17
    8000208c:	00a7f863          	bgeu	a5,a0,8000209c <_Z7kmallocm+0x44>
        return nullptr;
    80002090:	00000913          	li	s2,0
    80002094:	0440006f          	j	800020d8 <_Z7kmallocm+0x80>
        level = CACHE_BUFFER_SMALL;
    80002098:	00500513          	li	a0,5
    size_t index = level - CACHE_BUFFER_SMALL;
    8000209c:	ffb50493          	addi	s1,a0,-5
    if(slabAllocator->cachesBuffers[index] == nullptr)
    800020a0:	0000a917          	auipc	s2,0xa
    800020a4:	ac093903          	ld	s2,-1344(s2) # 8000bb60 <_ZL13slabAllocator>
    800020a8:	00349793          	slli	a5,s1,0x3
    800020ac:	00f907b3          	add	a5,s2,a5
    800020b0:	0087b783          	ld	a5,8(a5)
    800020b4:	04078263          	beqz	a5,800020f8 <_Z7kmallocm+0xa0>
        if(slabAllocator->cachesBuffers[index] == nullptr)
            return nullptr;
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    }

    return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
    800020b8:	00349513          	slli	a0,s1,0x3
    800020bc:	0000a497          	auipc	s1,0xa
    800020c0:	aa44b483          	ld	s1,-1372(s1) # 8000bb60 <_ZL13slabAllocator>
    800020c4:	00a48533          	add	a0,s1,a0
    800020c8:	00853503          	ld	a0,8(a0)
    800020cc:	00000097          	auipc	ra,0x0
    800020d0:	b0c080e7          	jalr	-1268(ra) # 80001bd8 <_Z16kmem_cache_allocP12kmem_cache_s>
    800020d4:	00050913          	mv	s2,a0
}
    800020d8:	00090513          	mv	a0,s2
    800020dc:	02813083          	ld	ra,40(sp)
    800020e0:	02013403          	ld	s0,32(sp)
    800020e4:	01813483          	ld	s1,24(sp)
    800020e8:	01013903          	ld	s2,16(sp)
    800020ec:	00813983          	ld	s3,8(sp)
    800020f0:	03010113          	addi	sp,sp,48
    800020f4:	00008067          	ret
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    800020f8:	07090513          	addi	a0,s2,112
    800020fc:	00000097          	auipc	ra,0x0
    80002100:	adc080e7          	jalr	-1316(ra) # 80001bd8 <_Z16kmem_cache_allocP12kmem_cache_s>
    80002104:	00349713          	slli	a4,s1,0x3
    80002108:	00e90933          	add	s2,s2,a4
    8000210c:	00a93423          	sd	a0,8(s2)
        if(slabAllocator->cachesBuffers[index] == nullptr)
    80002110:	0000a797          	auipc	a5,0xa
    80002114:	a507b783          	ld	a5,-1456(a5) # 8000bb60 <_ZL13slabAllocator>
    80002118:	00e787b3          	add	a5,a5,a4
    8000211c:	0087b903          	ld	s2,8(a5)
    80002120:	fa090ce3          	beqz	s2,800020d8 <_Z7kmallocm+0x80>
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    80002124:	00098513          	mv	a0,s3
    80002128:	fffff097          	auipc	ra,0xfffff
    8000212c:	75c080e7          	jalr	1884(ra) # 80001884 <_Z18getOptimalSlabSizem>
    80002130:	00050613          	mv	a2,a0
    80002134:	00000793          	li	a5,0
    80002138:	00000713          	li	a4,0
    8000213c:	00098693          	mv	a3,s3
    80002140:	00007597          	auipc	a1,0x7
    80002144:	0e058593          	addi	a1,a1,224 # 80009220 <CONSOLE_STATUS+0x210>
    80002148:	00090513          	mv	a0,s2
    8000214c:	fffff097          	auipc	ra,0xfffff
    80002150:	1d0080e7          	jalr	464(ra) # 8000131c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
    80002154:	f65ff06f          	j	800020b8 <_Z7kmallocm+0x60>

0000000080002158 <_Z5kfreePKv>:

void kfree(const void *objp)
{
    if(objp == nullptr)
    80002158:	08050263          	beqz	a0,800021dc <_Z5kfreePKv+0x84>
{
    8000215c:	fe010113          	addi	sp,sp,-32
    80002160:	00113c23          	sd	ra,24(sp)
    80002164:	00813823          	sd	s0,16(sp)
    80002168:	00913423          	sd	s1,8(sp)
    8000216c:	01213023          	sd	s2,0(sp)
    80002170:	02010413          	addi	s0,sp,32
    80002174:	00050913          	mv	s2,a0
        return;
    slab_t* slab = nullptr;
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002178:	00000493          	li	s1,0
    slab_t* slab = nullptr;
    8000217c:	00000513          	li	a0,0
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002180:	00c00793          	li	a5,12
    80002184:	0297e863          	bltu	a5,s1,800021b4 <_Z5kfreePKv+0x5c>
    {
        slab = findSlab(slabAllocator->cachesBuffers[i], objp);
    80002188:	00349793          	slli	a5,s1,0x3
    8000218c:	0000a717          	auipc	a4,0xa
    80002190:	9d473703          	ld	a4,-1580(a4) # 8000bb60 <_ZL13slabAllocator>
    80002194:	00f707b3          	add	a5,a4,a5
    80002198:	00090593          	mv	a1,s2
    8000219c:	0087b503          	ld	a0,8(a5)
    800021a0:	fffff097          	auipc	ra,0xfffff
    800021a4:	74c080e7          	jalr	1868(ra) # 800018ec <_Z8findSlabP12kmem_cache_sPKv>
        if(slab != nullptr) break;
    800021a8:	00051663          	bnez	a0,800021b4 <_Z5kfreePKv+0x5c>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800021ac:	00148493          	addi	s1,s1,1
    800021b0:	fd1ff06f          	j	80002180 <_Z5kfreePKv+0x28>
    }
    if(slab != nullptr)
    800021b4:	00050863          	beqz	a0,800021c4 <_Z5kfreePKv+0x6c>
    {
        free_slab_object(slab, objp);
    800021b8:	00090593          	mv	a1,s2
    800021bc:	00000097          	auipc	ra,0x0
    800021c0:	8dc080e7          	jalr	-1828(ra) # 80001a98 <_Z16free_slab_objectP6slab_sPKv>
    }
}
    800021c4:	01813083          	ld	ra,24(sp)
    800021c8:	01013403          	ld	s0,16(sp)
    800021cc:	00813483          	ld	s1,8(sp)
    800021d0:	00013903          	ld	s2,0(sp)
    800021d4:	02010113          	addi	sp,sp,32
    800021d8:	00008067          	ret
    800021dc:	00008067          	ret

00000000800021e0 <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep)
{
    800021e0:	fe010113          	addi	sp,sp,-32
    800021e4:	00113c23          	sd	ra,24(sp)
    800021e8:	00813823          	sd	s0,16(sp)
    800021ec:	00913423          	sd	s1,8(sp)
    800021f0:	02010413          	addi	s0,sp,32
    800021f4:	00050493          	mv	s1,a0
    if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr)
    800021f8:	05053783          	ld	a5,80(a0)
    800021fc:	02078263          	beqz	a5,80002220 <_Z18kmem_cache_destroyP12kmem_cache_s+0x40>
    {
        cachep->errors|=DESTROY_ERROR;
    80002200:	0784a783          	lw	a5,120(s1)
    80002204:	0027e793          	ori	a5,a5,2
    80002208:	06f4ac23          	sw	a5,120(s1)
    }
    destroy_slab_list(&cachep->slabs_empty);
    destroy_slab_list(&cachep->slabs_partial);
    destroy_slab_list(&cachep->slabs_full);
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
}
    8000220c:	01813083          	ld	ra,24(sp)
    80002210:	01013403          	ld	s0,16(sp)
    80002214:	00813483          	ld	s1,8(sp)
    80002218:	02010113          	addi	sp,sp,32
    8000221c:	00008067          	ret
    if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr)
    80002220:	04853783          	ld	a5,72(a0)
    80002224:	fc079ee3          	bnez	a5,80002200 <_Z18kmem_cache_destroyP12kmem_cache_s+0x20>
    destroy_slab_list(&cachep->slabs_empty);
    80002228:	04050513          	addi	a0,a0,64
    8000222c:	fffff097          	auipc	ra,0xfffff
    80002230:	060080e7          	jalr	96(ra) # 8000128c <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_partial);
    80002234:	05048513          	addi	a0,s1,80
    80002238:	fffff097          	auipc	ra,0xfffff
    8000223c:	054080e7          	jalr	84(ra) # 8000128c <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_full);
    80002240:	04848513          	addi	a0,s1,72
    80002244:	fffff097          	auipc	ra,0xfffff
    80002248:	048080e7          	jalr	72(ra) # 8000128c <_Z17destroy_slab_listPP6slab_s>
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
    8000224c:	00048593          	mv	a1,s1
    80002250:	0000a517          	auipc	a0,0xa
    80002254:	91053503          	ld	a0,-1776(a0) # 8000bb60 <_ZL13slabAllocator>
    80002258:	07050513          	addi	a0,a0,112
    8000225c:	00000097          	auipc	ra,0x0
    80002260:	b58080e7          	jalr	-1192(ra) # 80001db4 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    80002264:	fa9ff06f          	j	8000220c <_Z18kmem_cache_destroyP12kmem_cache_s+0x2c>

0000000080002268 <_Z17kmem_cache_shrinkP12kmem_cache_s>:

int kmem_cache_shrink(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    80002268:	02050863          	beqz	a0,80002298 <_Z17kmem_cache_shrinkP12kmem_cache_s+0x30>
{
    8000226c:	ff010113          	addi	sp,sp,-16
    80002270:	00113423          	sd	ra,8(sp)
    80002274:	00813023          	sd	s0,0(sp)
    80002278:	01010413          	addi	s0,sp,16
        return 0;
    int totalBlocks = destroy_slab_list(&cachep->slabs_empty);
    8000227c:	04050513          	addi	a0,a0,64
    80002280:	fffff097          	auipc	ra,0xfffff
    80002284:	00c080e7          	jalr	12(ra) # 8000128c <_Z17destroy_slab_listPP6slab_s>
    return totalBlocks;
}
    80002288:	00813083          	ld	ra,8(sp)
    8000228c:	00013403          	ld	s0,0(sp)
    80002290:	01010113          	addi	sp,sp,16
    80002294:	00008067          	ret
        return 0;
    80002298:	00000513          	li	a0,0
}
    8000229c:	00008067          	ret

00000000800022a0 <_Z16kmem_cache_errorP12kmem_cache_s>:

int kmem_cache_error(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    800022a0:	06050a63          	beqz	a0,80002314 <_Z16kmem_cache_errorP12kmem_cache_s+0x74>
{
    800022a4:	fe010113          	addi	sp,sp,-32
    800022a8:	00113c23          	sd	ra,24(sp)
    800022ac:	00813823          	sd	s0,16(sp)
    800022b0:	00913423          	sd	s1,8(sp)
    800022b4:	02010413          	addi	s0,sp,32
    800022b8:	00050493          	mv	s1,a0
        return 0;

    if(cachep->errors & EXPAND_ERROR)
    800022bc:	07852783          	lw	a5,120(a0)
    800022c0:	0017f793          	andi	a5,a5,1
    800022c4:	02079463          	bnez	a5,800022ec <_Z16kmem_cache_errorP12kmem_cache_s+0x4c>
        KConsole::trapPrintString("EXPAND ERROR\n");
    if(cachep->errors & DESTROY_ERROR)
    800022c8:	0784a783          	lw	a5,120(s1)
    800022cc:	0027f793          	andi	a5,a5,2
    800022d0:	02079863          	bnez	a5,80002300 <_Z16kmem_cache_errorP12kmem_cache_s+0x60>
        KConsole::trapPrintString("DESTROY ERROR");

    return cachep->errors;
    800022d4:	0784a503          	lw	a0,120(s1)
}
    800022d8:	01813083          	ld	ra,24(sp)
    800022dc:	01013403          	ld	s0,16(sp)
    800022e0:	00813483          	ld	s1,8(sp)
    800022e4:	02010113          	addi	sp,sp,32
    800022e8:	00008067          	ret
        KConsole::trapPrintString("EXPAND ERROR\n");
    800022ec:	00007517          	auipc	a0,0x7
    800022f0:	f4c50513          	addi	a0,a0,-180 # 80009238 <CONSOLE_STATUS+0x228>
    800022f4:	00001097          	auipc	ra,0x1
    800022f8:	4b0080e7          	jalr	1200(ra) # 800037a4 <_ZN8KConsole15trapPrintStringEPKc>
    800022fc:	fcdff06f          	j	800022c8 <_Z16kmem_cache_errorP12kmem_cache_s+0x28>
        KConsole::trapPrintString("DESTROY ERROR");
    80002300:	00007517          	auipc	a0,0x7
    80002304:	f4850513          	addi	a0,a0,-184 # 80009248 <CONSOLE_STATUS+0x238>
    80002308:	00001097          	auipc	ra,0x1
    8000230c:	49c080e7          	jalr	1180(ra) # 800037a4 <_ZN8KConsole15trapPrintStringEPKc>
    80002310:	fc5ff06f          	j	800022d4 <_Z16kmem_cache_errorP12kmem_cache_s+0x34>
        return 0;
    80002314:	00000513          	li	a0,0
}
    80002318:	00008067          	ret

000000008000231c <_Z9mem_allocm>:
//

#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    8000231c:	ff010113          	addi	sp,sp,-16
    80002320:	00813423          	sd	s0,8(sp)
    80002324:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002328:	03f50513          	addi	a0,a0,63
    8000232c:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    80002330:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80002334:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    80002338:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    8000233c:	00050513          	mv	a0,a0

    return (void*)allocatedAddr;
}
    80002340:	00813403          	ld	s0,8(sp)
    80002344:	01010113          	addi	sp,sp,16
    80002348:	00008067          	ret

000000008000234c <_Z8mem_freePv>:

int mem_free(void* p)
{
    8000234c:	ff010113          	addi	sp,sp,-16
    80002350:	00813423          	sd	s0,8(sp)
    80002354:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    80002358:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    8000235c:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    80002360:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002364:	00050513          	mv	a0,a0

    return result;
}
    80002368:	0005051b          	sext.w	a0,a0
    8000236c:	00813403          	ld	s0,8(sp)
    80002370:	01010113          	addi	sp,sp,16
    80002374:	00008067          	ret

0000000080002378 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    80002378:	fd010113          	addi	sp,sp,-48
    8000237c:	02113423          	sd	ra,40(sp)
    80002380:	02813023          	sd	s0,32(sp)
    80002384:	00913c23          	sd	s1,24(sp)
    80002388:	01213823          	sd	s2,16(sp)
    8000238c:	01313423          	sd	s3,8(sp)
    80002390:	03010413          	addi	s0,sp,48
    80002394:	00050493          	mv	s1,a0
    80002398:	00058913          	mv	s2,a1
    8000239c:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800023a0:	00001537          	lui	a0,0x1
    800023a4:	00000097          	auipc	ra,0x0
    800023a8:	f78080e7          	jalr	-136(ra) # 8000231c <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    //todo
    //handle this error
    if(stack_space == 0)
    800023ac:	04050263          	beqz	a0,800023f0 <_Z13thread_createPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800023b0:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800023b4:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800023b8:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800023bc:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800023c0:	01100793          	li	a5,17
    800023c4:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    800023c8:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800023cc:	00050513          	mv	a0,a0

    return result;
    800023d0:	0005051b          	sext.w	a0,a0
}
    800023d4:	02813083          	ld	ra,40(sp)
    800023d8:	02013403          	ld	s0,32(sp)
    800023dc:	01813483          	ld	s1,24(sp)
    800023e0:	01013903          	ld	s2,16(sp)
    800023e4:	00813983          	ld	s3,8(sp)
    800023e8:	03010113          	addi	sp,sp,48
    800023ec:	00008067          	ret
        return -1;
    800023f0:	fff00513          	li	a0,-1
    800023f4:	fe1ff06f          	j	800023d4 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>

00000000800023f8 <_Z15thread_dispatchv>:

void thread_dispatch()
{
    800023f8:	ff010113          	addi	sp,sp,-16
    800023fc:	00813423          	sd	s0,8(sp)
    80002400:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80002404:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80002408:	00000073          	ecall
}
    8000240c:	00813403          	ld	s0,8(sp)
    80002410:	01010113          	addi	sp,sp,16
    80002414:	00008067          	ret

0000000080002418 <_Z11thread_exitv>:

int thread_exit()
{
    80002418:	ff010113          	addi	sp,sp,-16
    8000241c:	00813423          	sd	s0,8(sp)
    80002420:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    80002424:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80002428:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000242c:	00050513          	mv	a0,a0
    return result;
}
    80002430:	0005051b          	sext.w	a0,a0
    80002434:	00813403          	ld	s0,8(sp)
    80002438:	01010113          	addi	sp,sp,16
    8000243c:	00008067          	ret

0000000080002440 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    80002440:	ff010113          	addi	sp,sp,-16
    80002444:	00813423          	sd	s0,8(sp)
    80002448:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    8000244c:	02059593          	slli	a1,a1,0x20
    80002450:	0205d593          	srli	a1,a1,0x20
    80002454:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80002458:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    8000245c:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    80002460:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002464:	00050513          	mv	a0,a0
    return result;
}
    80002468:	0005051b          	sext.w	a0,a0
    8000246c:	00813403          	ld	s0,8(sp)
    80002470:	01010113          	addi	sp,sp,16
    80002474:	00008067          	ret

0000000080002478 <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    80002478:	ff010113          	addi	sp,sp,-16
    8000247c:	00813423          	sd	s0,8(sp)
    80002480:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80002484:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    80002488:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    8000248c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002490:	00050513          	mv	a0,a0
    return result;
}
    80002494:	0005051b          	sext.w	a0,a0
    80002498:	00813403          	ld	s0,8(sp)
    8000249c:	01010113          	addi	sp,sp,16
    800024a0:	00008067          	ret

00000000800024a4 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    800024a4:	ff010113          	addi	sp,sp,-16
    800024a8:	00813423          	sd	s0,8(sp)
    800024ac:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800024b0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800024b4:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    800024b8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800024bc:	00050513          	mv	a0,a0
    return result;
}
    800024c0:	0005051b          	sext.w	a0,a0
    800024c4:	00813403          	ld	s0,8(sp)
    800024c8:	01010113          	addi	sp,sp,16
    800024cc:	00008067          	ret

00000000800024d0 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    800024d0:	ff010113          	addi	sp,sp,-16
    800024d4:	00813423          	sd	s0,8(sp)
    800024d8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800024dc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    800024e0:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    800024e4:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800024e8:	00050513          	mv	a0,a0
    return result;
}
    800024ec:	0005051b          	sext.w	a0,a0
    800024f0:	00813403          	ld	s0,8(sp)
    800024f4:	01010113          	addi	sp,sp,16
    800024f8:	00008067          	ret

00000000800024fc <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    800024fc:	ff010113          	addi	sp,sp,-16
    80002500:	00813423          	sd	s0,8(sp)
    80002504:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    80002508:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    8000250c:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    80002510:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002514:	00050513          	mv	a0,a0
    return result;
}
    80002518:	0005051b          	sext.w	a0,a0
    8000251c:	00813403          	ld	s0,8(sp)
    80002520:	01010113          	addi	sp,sp,16
    80002524:	00008067          	ret

0000000080002528 <_Z12thread_startPv>:

int thread_start(void* p)
{
    80002528:	ff010113          	addi	sp,sp,-16
    8000252c:	00813423          	sd	s0,8(sp)
    80002530:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    80002534:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    80002538:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    8000253c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002540:	00050513          	mv	a0,a0
    return result;
}
    80002544:	0005051b          	sext.w	a0,a0
    80002548:	00813403          	ld	s0,8(sp)
    8000254c:	01010113          	addi	sp,sp,16
    80002550:	00008067          	ret

0000000080002554 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    80002554:	fd010113          	addi	sp,sp,-48
    80002558:	02113423          	sd	ra,40(sp)
    8000255c:	02813023          	sd	s0,32(sp)
    80002560:	00913c23          	sd	s1,24(sp)
    80002564:	01213823          	sd	s2,16(sp)
    80002568:	01313423          	sd	s3,8(sp)
    8000256c:	03010413          	addi	s0,sp,48
    80002570:	00050493          	mv	s1,a0
    80002574:	00058913          	mv	s2,a1
    80002578:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    8000257c:	00001537          	lui	a0,0x1
    80002580:	00000097          	auipc	ra,0x0
    80002584:	d9c080e7          	jalr	-612(ra) # 8000231c <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    80002588:	04050263          	beqz	a0,800025cc <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    8000258c:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    80002590:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    80002594:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    80002598:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    8000259c:	01400793          	li	a5,20
    800025a0:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800025a4:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800025a8:	00050513          	mv	a0,a0
    return result;
    800025ac:	0005051b          	sext.w	a0,a0
}
    800025b0:	02813083          	ld	ra,40(sp)
    800025b4:	02013403          	ld	s0,32(sp)
    800025b8:	01813483          	ld	s1,24(sp)
    800025bc:	01013903          	ld	s2,16(sp)
    800025c0:	00813983          	ld	s3,8(sp)
    800025c4:	03010113          	addi	sp,sp,48
    800025c8:	00008067          	ret
        return -1;
    800025cc:	fff00513          	li	a0,-1
    800025d0:	fe1ff06f          	j	800025b0 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>

00000000800025d4 <_Z4getcv>:

char getc()
{
    800025d4:	ff010113          	addi	sp,sp,-16
    800025d8:	00813423          	sd	s0,8(sp)
    800025dc:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    800025e0:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    800025e4:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800025e8:	00050513          	mv	a0,a0
    return (char)result;
}
    800025ec:	0ff57513          	andi	a0,a0,255
    800025f0:	00813403          	ld	s0,8(sp)
    800025f4:	01010113          	addi	sp,sp,16
    800025f8:	00008067          	ret

00000000800025fc <_Z4putcc>:

void putc(char c)
{
    800025fc:	ff010113          	addi	sp,sp,-16
    80002600:	00813423          	sd	s0,8(sp)
    80002604:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    80002608:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    8000260c:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    80002610:	00000073          	ecall
}
    80002614:	00813403          	ld	s0,8(sp)
    80002618:	01010113          	addi	sp,sp,16
    8000261c:	00008067          	ret

0000000080002620 <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    80002620:	ff010113          	addi	sp,sp,-16
    80002624:	00813423          	sd	s0,8(sp)
    80002628:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    8000262c:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    80002630:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002634:	00050513          	mv	a0,a0
    return (char)result;
}
    80002638:	0ff57513          	andi	a0,a0,255
    8000263c:	00813403          	ld	s0,8(sp)
    80002640:	01010113          	addi	sp,sp,16
    80002644:	00008067          	ret

0000000080002648 <_Z17thread_delete_pcbP7_thread>:

int thread_delete_pcb(thread_t handle)
{
    80002648:	ff010113          	addi	sp,sp,-16
    8000264c:	00813423          	sd	s0,8(sp)
    80002650:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80002654:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    80002658:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    8000265c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002660:	00050513          	mv	a0,a0
    return (char)result;
}
    80002664:	0ff57513          	andi	a0,a0,255
    80002668:	00813403          	ld	s0,8(sp)
    8000266c:	01010113          	addi	sp,sp,16
    80002670:	00008067          	ret

0000000080002674 <_ZN7_threaddlEPv>:
//

#include "../h/_thread.hpp"
#include "../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    80002674:	ff010113          	addi	sp,sp,-16
    80002678:	00113423          	sd	ra,8(sp)
    8000267c:	00813023          	sd	s0,0(sp)
    80002680:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    80002684:	00000097          	auipc	ra,0x0
    80002688:	fc4080e7          	jalr	-60(ra) # 80002648 <_Z17thread_delete_pcbP7_thread>
    8000268c:	00813083          	ld	ra,8(sp)
    80002690:	00013403          	ld	s0,0(sp)
    80002694:	01010113          	addi	sp,sp,16
    80002698:	00008067          	ret

000000008000269c <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    8000269c:	ff010113          	addi	sp,sp,-16
    800026a0:	00113423          	sd	ra,8(sp)
    800026a4:	00813023          	sd	s0,0(sp)
    800026a8:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800026ac:	00002097          	auipc	ra,0x2
    800026b0:	fdc080e7          	jalr	-36(ra) # 80004688 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    800026b4:	00009797          	auipc	a5,0x9
    800026b8:	4b47b783          	ld	a5,1204(a5) # 8000bb68 <_ZN3PCB7runningE>
    800026bc:	0287b703          	ld	a4,40(a5)
    800026c0:	0307b503          	ld	a0,48(a5)
    800026c4:	000700e7          	jalr	a4

    thread_exit();
    800026c8:	00000097          	auipc	ra,0x0
    800026cc:	d50080e7          	jalr	-688(ra) # 80002418 <_Z11thread_exitv>
}
    800026d0:	00813083          	ld	ra,8(sp)
    800026d4:	00013403          	ld	s0,0(sp)
    800026d8:	01010113          	addi	sp,sp,16
    800026dc:	00008067          	ret

00000000800026e0 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800026e0:	ff010113          	addi	sp,sp,-16
    800026e4:	00813423          	sd	s0,8(sp)
    800026e8:	01010413          	addi	s0,sp,16
    })
    800026ec:	00050023          	sb	zero,0(a0) # 1000 <_entry-0x7ffff000>
    800026f0:	00e53c23          	sd	a4,24(a0)
    800026f4:	02053023          	sd	zero,32(a0)
    800026f8:	02b53423          	sd	a1,40(a0)
    800026fc:	02c53823          	sd	a2,48(a0)
    80002700:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002704:	000017b7          	lui	a5,0x1
    80002708:	00f686b3          	add	a3,a3,a5
    })
    8000270c:	04d53423          	sd	a3,72(a0)
    80002710:	00000797          	auipc	a5,0x0
    80002714:	f8c78793          	addi	a5,a5,-116 # 8000269c <_ZN3PCB6runnerEv>
    80002718:	04f53823          	sd	a5,80(a0)
    8000271c:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    80002720:	00053423          	sd	zero,8(a0)
}
    80002724:	00813403          	ld	s0,8(sp)
    80002728:	01010113          	addi	sp,sp,16
    8000272c:	00008067          	ret

0000000080002730 <_ZN3PCB5startEv>:
{
    80002730:	ff010113          	addi	sp,sp,-16
    80002734:	00113423          	sd	ra,8(sp)
    80002738:	00813023          	sd	s0,0(sp)
    8000273c:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002740:	00001097          	auipc	ra,0x1
    80002744:	31c080e7          	jalr	796(ra) # 80003a5c <_ZN9Scheduler3putEP3PCB>
}
    80002748:	00813083          	ld	ra,8(sp)
    8000274c:	00013403          	ld	s0,0(sp)
    80002750:	01010113          	addi	sp,sp,16
    80002754:	00008067          	ret

0000000080002758 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002758:	fe010113          	addi	sp,sp,-32
    8000275c:	00113c23          	sd	ra,24(sp)
    80002760:	00813823          	sd	s0,16(sp)
    80002764:	00913423          	sd	s1,8(sp)
    80002768:	01213023          	sd	s2,0(sp)
    8000276c:	02010413          	addi	s0,sp,32
    PCB* old = running;
    80002770:	00009497          	auipc	s1,0x9
    80002774:	3f84b483          	ld	s1,1016(s1) # 8000bb68 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80002778:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    8000277c:	00100793          	li	a5,1
    80002780:	04f70a63          	beq	a4,a5,800027d4 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    80002784:	00001097          	auipc	ra,0x1
    80002788:	32c080e7          	jalr	812(ra) # 80003ab0 <_ZN9Scheduler3getEv>
    8000278c:	00009917          	auipc	s2,0x9
    80002790:	3dc90913          	addi	s2,s2,988 # 8000bb68 <_ZN3PCB7runningE>
    80002794:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    80002798:	00100793          	li	a5,1
    8000279c:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);

    Riscv::changePrivMode();
    800027a0:	00002097          	auipc	ra,0x2
    800027a4:	000080e7          	jalr	ra # 800047a0 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    800027a8:	00093583          	ld	a1,0(s2)
    800027ac:	04858593          	addi	a1,a1,72
    800027b0:	04848513          	addi	a0,s1,72
    800027b4:	fffff097          	auipc	ra,0xfffff
    800027b8:	a84080e7          	jalr	-1404(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800027bc:	01813083          	ld	ra,24(sp)
    800027c0:	01013403          	ld	s0,16(sp)
    800027c4:	00813483          	ld	s1,8(sp)
    800027c8:	00013903          	ld	s2,0(sp)
    800027cc:	02010113          	addi	sp,sp,32
    800027d0:	00008067          	ret
        Scheduler::put(old);
    800027d4:	00048513          	mv	a0,s1
    800027d8:	00001097          	auipc	ra,0x1
    800027dc:	284080e7          	jalr	644(ra) # 80003a5c <_ZN9Scheduler3putEP3PCB>
    800027e0:	fa5ff06f          	j	80002784 <_ZN3PCB8dispatchEv+0x2c>

00000000800027e4 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800027e4:	ff010113          	addi	sp,sp,-16
    800027e8:	00113423          	sd	ra,8(sp)
    800027ec:	00813023          	sd	s0,0(sp)
    800027f0:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::pcbCache);
    800027f4:	00009797          	auipc	a5,0x9
    800027f8:	3147b783          	ld	a5,788(a5) # 8000bb08 <_GLOBAL_OFFSET_TABLE_+0x90>
    800027fc:	0007b503          	ld	a0,0(a5)
    80002800:	fffff097          	auipc	ra,0xfffff
    80002804:	3d8080e7          	jalr	984(ra) # 80001bd8 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    80002808:	00813083          	ld	ra,8(sp)
    8000280c:	00013403          	ld	s0,0(sp)
    80002810:	01010113          	addi	sp,sp,16
    80002814:	00008067          	ret

0000000080002818 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002818:	ff010113          	addi	sp,sp,-16
    8000281c:	00113423          	sd	ra,8(sp)
    80002820:	00813023          	sd	s0,0(sp)
    80002824:	01010413          	addi	s0,sp,16
    80002828:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::pcbCache, p);
    8000282c:	00009797          	auipc	a5,0x9
    80002830:	2dc7b783          	ld	a5,732(a5) # 8000bb08 <_GLOBAL_OFFSET_TABLE_+0x90>
    80002834:	0007b503          	ld	a0,0(a5)
    80002838:	fffff097          	auipc	ra,0xfffff
    8000283c:	57c080e7          	jalr	1404(ra) # 80001db4 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    80002840:	00813083          	ld	ra,8(sp)
    80002844:	00013403          	ld	s0,0(sp)
    80002848:	01010113          	addi	sp,sp,16
    8000284c:	00008067          	ret

0000000080002850 <_ZN3PCBD1Ev>:

PCB::~PCB()
    80002850:	ff010113          	addi	sp,sp,-16
    80002854:	00113423          	sd	ra,8(sp)
    80002858:	00813023          	sd	s0,0(sp)
    8000285c:	01010413          	addi	s0,sp,16
{
    //MemoryAllocator::kfree(beginSP);
    kfree(beginSP);
    80002860:	03853503          	ld	a0,56(a0)
    80002864:	00000097          	auipc	ra,0x0
    80002868:	8f4080e7          	jalr	-1804(ra) # 80002158 <_Z5kfreePKv>
}
    8000286c:	00813083          	ld	ra,8(sp)
    80002870:	00013403          	ld	s0,0(sp)
    80002874:	01010113          	addi	sp,sp,16
    80002878:	00008067          	ret

000000008000287c <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    8000287c:	fd010113          	addi	sp,sp,-48
    80002880:	02113423          	sd	ra,40(sp)
    80002884:	02813023          	sd	s0,32(sp)
    80002888:	00913c23          	sd	s1,24(sp)
    8000288c:	01213823          	sd	s2,16(sp)
    80002890:	01313423          	sd	s3,8(sp)
    80002894:	01413023          	sd	s4,0(sp)
    80002898:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    8000289c:	06000513          	li	a0,96
    800028a0:	00000097          	auipc	ra,0x0
    800028a4:	f44080e7          	jalr	-188(ra) # 800027e4 <_ZN3PCBnwEm>
    800028a8:	00050493          	mv	s1,a0
    800028ac:	00000713          	li	a4,0
    800028b0:	00000693          	li	a3,0
    800028b4:	00000613          	li	a2,0
    800028b8:	00000593          	li	a1,0
    800028bc:	00000097          	auipc	ra,0x0
    800028c0:	e24080e7          	jalr	-476(ra) # 800026e0 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    800028c4:	00100793          	li	a5,1
    800028c8:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    800028cc:	00009917          	auipc	s2,0x9
    800028d0:	29c90913          	addi	s2,s2,668 # 8000bb68 <_ZN3PCB7runningE>
    800028d4:	00993023          	sd	s1,0(s2)
    800028d8:	00100a13          	li	s4,1
    800028dc:	0544a023          	sw	s4,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
                              kmalloc(DEFAULT_STACK_SIZE),
    800028e0:	00001537          	lui	a0,0x1
    800028e4:	fffff097          	auipc	ra,0xfffff
    800028e8:	774080e7          	jalr	1908(ra) # 80002058 <_Z7kmallocm>
    800028ec:	00050993          	mv	s3,a0
                              //MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
                              DEFAULT_TIME_SLICE);
    800028f0:	06000513          	li	a0,96
    800028f4:	00000097          	auipc	ra,0x0
    800028f8:	ef0080e7          	jalr	-272(ra) # 800027e4 <_ZN3PCBnwEm>
    800028fc:	00050493          	mv	s1,a0
    80002900:	00200713          	li	a4,2
    80002904:	00098693          	mv	a3,s3
    80002908:	00000613          	li	a2,0
    8000290c:	00009597          	auipc	a1,0x9
    80002910:	1c45b583          	ld	a1,452(a1) # 8000bad0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002914:	00000097          	auipc	ra,0x0
    80002918:	dcc080e7          	jalr	-564(ra) # 800026e0 <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
    8000291c:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    80002920:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    80002924:	00893503          	ld	a0,8(s2)
    80002928:	00000097          	auipc	ra,0x0
    8000292c:	e08080e7          	jalr	-504(ra) # 80002730 <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0,
                           kmalloc(DEFAULT_STACK_SIZE),
    80002930:	00001537          	lui	a0,0x1
    80002934:	fffff097          	auipc	ra,0xfffff
    80002938:	724080e7          	jalr	1828(ra) # 80002058 <_Z7kmallocm>
    8000293c:	00050993          	mv	s3,a0
                           //MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
                           DEFAULT_TIME_SLICE);
    80002940:	06000513          	li	a0,96
    80002944:	00000097          	auipc	ra,0x0
    80002948:	ea0080e7          	jalr	-352(ra) # 800027e4 <_ZN3PCBnwEm>
    8000294c:	00050493          	mv	s1,a0
    80002950:	00200713          	li	a4,2
    80002954:	00098693          	mv	a3,s3
    80002958:	00000613          	li	a2,0
    8000295c:	00009597          	auipc	a1,0x9
    80002960:	1a45b583          	ld	a1,420(a1) # 8000bb00 <_GLOBAL_OFFSET_TABLE_+0x88>
    80002964:	00000097          	auipc	ra,0x0
    80002968:	d7c080e7          	jalr	-644(ra) # 800026e0 <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0,
    8000296c:	00993823          	sd	s1,16(s2)
    PCB::userPCB->start();
    80002970:	00048513          	mv	a0,s1
    80002974:	00000097          	auipc	ra,0x0
    80002978:	dbc080e7          	jalr	-580(ra) # 80002730 <_ZN3PCB5startEv>
}
    8000297c:	02813083          	ld	ra,40(sp)
    80002980:	02013403          	ld	s0,32(sp)
    80002984:	01813483          	ld	s1,24(sp)
    80002988:	01013903          	ld	s2,16(sp)
    8000298c:	00813983          	ld	s3,8(sp)
    80002990:	00013a03          	ld	s4,0(sp)
    80002994:	03010113          	addi	sp,sp,48
    80002998:	00008067          	ret

000000008000299c <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    8000299c:	ff010113          	addi	sp,sp,-16
    800029a0:	00813423          	sd	s0,8(sp)
    800029a4:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    800029a8:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    800029ac:	ffd50513          	addi	a0,a0,-3
}
    800029b0:	00153513          	seqz	a0,a0
    800029b4:	00813403          	ld	s0,8(sp)
    800029b8:	01010113          	addi	sp,sp,16
    800029bc:	00008067          	ret

00000000800029c0 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    800029c0:	ff010113          	addi	sp,sp,-16
    800029c4:	00113423          	sd	ra,8(sp)
    800029c8:	00813023          	sd	s0,0(sp)
    800029cc:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800029d0:	00009797          	auipc	a5,0x9
    800029d4:	19878793          	addi	a5,a5,408 # 8000bb68 <_ZN3PCB7runningE>
    800029d8:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    800029dc:	0007b783          	ld	a5,0(a5)
    800029e0:	00300713          	li	a4,3
    800029e4:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    800029e8:	00000097          	auipc	ra,0x0
    800029ec:	d70080e7          	jalr	-656(ra) # 80002758 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    800029f0:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800029f4:	00002097          	auipc	ra,0x2
    800029f8:	d74080e7          	jalr	-652(ra) # 80004768 <_ZN5Riscv13w_a0_sscratchEv>
}
    800029fc:	00813083          	ld	ra,8(sp)
    80002a00:	00013403          	ld	s0,0(sp)
    80002a04:	01010113          	addi	sp,sp,16
    80002a08:	00008067          	ret

0000000080002a0c <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002a0c:	ff010113          	addi	sp,sp,-16
    80002a10:	00113423          	sd	ra,8(sp)
    80002a14:	00813023          	sd	s0,0(sp)
    80002a18:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002a1c:	00009797          	auipc	a5,0x9
    80002a20:	1607b223          	sd	zero,356(a5) # 8000bb80 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002a24:	00000097          	auipc	ra,0x0
    80002a28:	d34080e7          	jalr	-716(ra) # 80002758 <_ZN3PCB8dispatchEv>
}
    80002a2c:	00813083          	ld	ra,8(sp)
    80002a30:	00013403          	ld	s0,0(sp)
    80002a34:	01010113          	addi	sp,sp,16
    80002a38:	00008067          	ret

0000000080002a3c <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002a3c:	ff010113          	addi	sp,sp,-16
    80002a40:	00113423          	sd	ra,8(sp)
    80002a44:	00813023          	sd	s0,0(sp)
    80002a48:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002a4c:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002a50:	00009717          	auipc	a4,0x9
    80002a54:	11870713          	addi	a4,a4,280 # 8000bb68 <_ZN3PCB7runningE>
    80002a58:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002a5c:	00073703          	ld	a4,0(a4)
    80002a60:	00009697          	auipc	a3,0x9
    80002a64:	0686b683          	ld	a3,104(a3) # 8000bac8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002a68:	0006b683          	ld	a3,0(a3)
    80002a6c:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002a70:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80002a74:	00001097          	auipc	ra,0x1
    80002a78:	e6c080e7          	jalr	-404(ra) # 800038e0 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002a7c:	00000097          	auipc	ra,0x0
    80002a80:	cdc080e7          	jalr	-804(ra) # 80002758 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002a84:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002a88:	00002097          	auipc	ra,0x2
    80002a8c:	ce0080e7          	jalr	-800(ra) # 80004768 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002a90:	00813083          	ld	ra,8(sp)
    80002a94:	00013403          	ld	s0,0(sp)
    80002a98:	01010113          	addi	sp,sp,16
    80002a9c:	00008067          	ret

0000000080002aa0 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002aa0:	fd010113          	addi	sp,sp,-48
    80002aa4:	02113423          	sd	ra,40(sp)
    80002aa8:	02813023          	sd	s0,32(sp)
    80002aac:	00913c23          	sd	s1,24(sp)
    80002ab0:	01213823          	sd	s2,16(sp)
    80002ab4:	01313423          	sd	s3,8(sp)
    80002ab8:	01413023          	sd	s4,0(sp)
    80002abc:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002ac0:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002ac4:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002ac8:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002acc:	06000513          	li	a0,96
    80002ad0:	00000097          	auipc	ra,0x0
    80002ad4:	d14080e7          	jalr	-748(ra) # 800027e4 <_ZN3PCBnwEm>
    80002ad8:	00050493          	mv	s1,a0
    80002adc:	00200713          	li	a4,2
    80002ae0:	00009697          	auipc	a3,0x9
    80002ae4:	0a86b683          	ld	a3,168(a3) # 8000bb88 <_ZN3PCB10savedRegA4E>
    80002ae8:	000a0613          	mv	a2,s4
    80002aec:	00098593          	mv	a1,s3
    80002af0:	00000097          	auipc	ra,0x0
    80002af4:	bf0080e7          	jalr	-1040(ra) # 800026e0 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002af8:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002afc:	02048e63          	beqz	s1,80002b38 <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80002b00:	00048513          	mv	a0,s1
    80002b04:	00000097          	auipc	ra,0x0
    80002b08:	c2c080e7          	jalr	-980(ra) # 80002730 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002b0c:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002b10:	00002097          	auipc	ra,0x2
    80002b14:	c58080e7          	jalr	-936(ra) # 80004768 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002b18:	02813083          	ld	ra,40(sp)
    80002b1c:	02013403          	ld	s0,32(sp)
    80002b20:	01813483          	ld	s1,24(sp)
    80002b24:	01013903          	ld	s2,16(sp)
    80002b28:	00813983          	ld	s3,8(sp)
    80002b2c:	00013a03          	ld	s4,0(sp)
    80002b30:	03010113          	addi	sp,sp,48
    80002b34:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002b38:	fff00513          	li	a0,-1
    80002b3c:	fd5ff06f          	j	80002b10 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002b40 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002b40:	ff010113          	addi	sp,sp,-16
    80002b44:	00113423          	sd	ra,8(sp)
    80002b48:	00813023          	sd	s0,0(sp)
    80002b4c:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002b50:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002b54:	02050463          	beqz	a0,80002b7c <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002b58:	00000097          	auipc	ra,0x0
    80002b5c:	bd8080e7          	jalr	-1064(ra) # 80002730 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002b60:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80002b64:	00002097          	auipc	ra,0x2
    80002b68:	c04080e7          	jalr	-1020(ra) # 80004768 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002b6c:	00813083          	ld	ra,8(sp)
    80002b70:	00013403          	ld	s0,0(sp)
    80002b74:	01010113          	addi	sp,sp,16
    80002b78:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002b7c:	fff00513          	li	a0,-1
    80002b80:	fe5ff06f          	j	80002b64 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002b84 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002b84:	fd010113          	addi	sp,sp,-48
    80002b88:	02113423          	sd	ra,40(sp)
    80002b8c:	02813023          	sd	s0,32(sp)
    80002b90:	00913c23          	sd	s1,24(sp)
    80002b94:	01213823          	sd	s2,16(sp)
    80002b98:	01313423          	sd	s3,8(sp)
    80002b9c:	01413023          	sd	s4,0(sp)
    80002ba0:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002ba4:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002ba8:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002bac:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002bb0:	06000513          	li	a0,96
    80002bb4:	00000097          	auipc	ra,0x0
    80002bb8:	c30080e7          	jalr	-976(ra) # 800027e4 <_ZN3PCBnwEm>
    80002bbc:	00050493          	mv	s1,a0
    80002bc0:	00200713          	li	a4,2
    80002bc4:	00009697          	auipc	a3,0x9
    80002bc8:	fc46b683          	ld	a3,-60(a3) # 8000bb88 <_ZN3PCB10savedRegA4E>
    80002bcc:	000a0613          	mv	a2,s4
    80002bd0:	00098593          	mv	a1,s3
    80002bd4:	00000097          	auipc	ra,0x0
    80002bd8:	b0c080e7          	jalr	-1268(ra) # 800026e0 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002bdc:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002be0:	02048863          	beqz	s1,80002c10 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    80002be4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002be8:	00002097          	auipc	ra,0x2
    80002bec:	b80080e7          	jalr	-1152(ra) # 80004768 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002bf0:	02813083          	ld	ra,40(sp)
    80002bf4:	02013403          	ld	s0,32(sp)
    80002bf8:	01813483          	ld	s1,24(sp)
    80002bfc:	01013903          	ld	s2,16(sp)
    80002c00:	00813983          	ld	s3,8(sp)
    80002c04:	00013a03          	ld	s4,0(sp)
    80002c08:	03010113          	addi	sp,sp,48
    80002c0c:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002c10:	fff00513          	li	a0,-1
    80002c14:	fd5ff06f          	j	80002be8 <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002c18 <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    80002c18:	fe010113          	addi	sp,sp,-32
    80002c1c:	00113c23          	sd	ra,24(sp)
    80002c20:	00813823          	sd	s0,16(sp)
    80002c24:	00913423          	sd	s1,8(sp)
    80002c28:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002c2c:	00058493          	mv	s1,a1
    if(pcb != 0)
    80002c30:	02048e63          	beqz	s1,80002c6c <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80002c34:	00048513          	mv	a0,s1
    80002c38:	00000097          	auipc	ra,0x0
    80002c3c:	c18080e7          	jalr	-1000(ra) # 80002850 <_ZN3PCBD1Ev>
    80002c40:	00048513          	mv	a0,s1
    80002c44:	00000097          	auipc	ra,0x0
    80002c48:	bd4080e7          	jalr	-1068(ra) # 80002818 <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    80002c4c:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80002c50:	00002097          	auipc	ra,0x2
    80002c54:	b18080e7          	jalr	-1256(ra) # 80004768 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002c58:	01813083          	ld	ra,24(sp)
    80002c5c:	01013403          	ld	s0,16(sp)
    80002c60:	00813483          	ld	s1,8(sp)
    80002c64:	02010113          	addi	sp,sp,32
    80002c68:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80002c6c:	00100513          	li	a0,1
    80002c70:	fe1ff06f          	j	80002c50 <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080002c74 <_Z12getBlockAddrm>:
    addBlocks(buddy, addr, level); //adds free blocks
    buddy->numOfFreeBlocks += (1 << level);
}

size_t getBlockAddr(size_t addr)
{
    80002c74:	ff010113          	addi	sp,sp,-16
    80002c78:	00813423          	sd	s0,8(sp)
    80002c7c:	01010413          	addi	s0,sp,16
    size_t mask = ((size_t)-1) << BLOCK_SIZE_POWER_2;
    return addr & mask;
}
    80002c80:	fffff7b7          	lui	a5,0xfffff
    80002c84:	00f57533          	and	a0,a0,a5
    80002c88:	00813403          	ld	s0,8(sp)
    80002c8c:	01010113          	addi	sp,sp,16
    80002c90:	00008067          	ret

0000000080002c94 <_Z16getNextBlockAddrm>:
size_t getNextBlockAddr(size_t addr)
{
    80002c94:	ff010113          	addi	sp,sp,-16
    80002c98:	00113423          	sd	ra,8(sp)
    80002c9c:	00813023          	sd	s0,0(sp)
    80002ca0:	01010413          	addi	s0,sp,16
    size_t currBlock = getBlockAddr(addr);
    80002ca4:	00000097          	auipc	ra,0x0
    80002ca8:	fd0080e7          	jalr	-48(ra) # 80002c74 <_Z12getBlockAddrm>
    return currBlock + BLOCK_SIZE;
}
    80002cac:	000017b7          	lui	a5,0x1
    80002cb0:	00f50533          	add	a0,a0,a5
    80002cb4:	00813083          	ld	ra,8(sp)
    80002cb8:	00013403          	ld	s0,0(sp)
    80002cbc:	01010113          	addi	sp,sp,16
    80002cc0:	00008067          	ret

0000000080002cc4 <_Z12getDeg2Floorm>:

size_t getDeg2Floor(size_t num)
{
    80002cc4:	ff010113          	addi	sp,sp,-16
    80002cc8:	00813423          	sd	s0,8(sp)
    80002ccc:	01010413          	addi	s0,sp,16
    size_t x = 1;
    size_t deg = 0;
    80002cd0:	00000713          	li	a4,0
    size_t x = 1;
    80002cd4:	00100793          	li	a5,1
    while(x <= num)
    80002cd8:	00f56863          	bltu	a0,a5,80002ce8 <_Z12getDeg2Floorm+0x24>
    {
        deg++;
    80002cdc:	00170713          	addi	a4,a4,1
        x<<=1;
    80002ce0:	00179793          	slli	a5,a5,0x1
    while(x <= num)
    80002ce4:	ff5ff06f          	j	80002cd8 <_Z12getDeg2Floorm+0x14>
    }
    return deg - 1;
}
    80002ce8:	fff70513          	addi	a0,a4,-1
    80002cec:	00813403          	ld	s0,8(sp)
    80002cf0:	01010113          	addi	sp,sp,16
    80002cf4:	00008067          	ret

0000000080002cf8 <_Z11getDeg2Ceilm>:

size_t getDeg2Ceil(size_t num)
{
    80002cf8:	ff010113          	addi	sp,sp,-16
    80002cfc:	00813423          	sd	s0,8(sp)
    80002d00:	01010413          	addi	s0,sp,16
    80002d04:	00050713          	mv	a4,a0
    size_t x = 1;
    size_t deg = 0;
    80002d08:	00000513          	li	a0,0
    size_t x = 1;
    80002d0c:	00100793          	li	a5,1
    while(x < num)
    80002d10:	00e7f863          	bgeu	a5,a4,80002d20 <_Z11getDeg2Ceilm+0x28>
    {
        deg++;
    80002d14:	00150513          	addi	a0,a0,1
        x<<=1;
    80002d18:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80002d1c:	ff5ff06f          	j	80002d10 <_Z11getDeg2Ceilm+0x18>
    }
    return deg;
}
    80002d20:	00813403          	ld	s0,8(sp)
    80002d24:	01010113          	addi	sp,sp,16
    80002d28:	00008067          	ret

0000000080002d2c <_Z15addBlockToLevelP14buddyAllocatorPvm>:
    addBlockToLevel(buddy, addr, level);
}

//adds free block to level
void addBlockToLevel(buddyAllocator* buddy, void* addr, size_t level)
{
    80002d2c:	ff010113          	addi	sp,sp,-16
    80002d30:	00813423          	sd	s0,8(sp)
    80002d34:	01010413          	addi	s0,sp,16
    buddyBlock* newBlock = (buddyBlock*)addr;
    newBlock->next = nullptr;
    80002d38:	0005b023          	sd	zero,0(a1)
    if(buddy->bucket[level].first == nullptr)
    80002d3c:	00260793          	addi	a5,a2,2
    80002d40:	00479793          	slli	a5,a5,0x4
    80002d44:	00f507b3          	add	a5,a0,a5
    80002d48:	0007b783          	ld	a5,0(a5) # 1000 <_entry-0x7ffff000>
    80002d4c:	02078463          	beqz	a5,80002d74 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x48>
    {
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    }
    else
    {
        buddy->bucket[level].last->next = newBlock;
    80002d50:	00260613          	addi	a2,a2,2
    80002d54:	00461613          	slli	a2,a2,0x4
    80002d58:	00c50633          	add	a2,a0,a2
    80002d5c:	00863783          	ld	a5,8(a2)
    80002d60:	00b7b023          	sd	a1,0(a5)
        buddy->bucket[level].last = newBlock;
    80002d64:	00b63423          	sd	a1,8(a2)
    }
}
    80002d68:	00813403          	ld	s0,8(sp)
    80002d6c:	01010113          	addi	sp,sp,16
    80002d70:	00008067          	ret
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    80002d74:	00260613          	addi	a2,a2,2
    80002d78:	00461613          	slli	a2,a2,0x4
    80002d7c:	00c50633          	add	a2,a0,a2
    80002d80:	00b63423          	sd	a1,8(a2)
    80002d84:	00b63023          	sd	a1,0(a2)
    80002d88:	fe1ff06f          	j	80002d68 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x3c>

0000000080002d8c <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>:

size_t getBuddyBlockAddr(buddyAllocator* buddy, void* addr, size_t level)
{
    80002d8c:	ff010113          	addi	sp,sp,-16
    80002d90:	00813423          	sd	s0,8(sp)
    80002d94:	01010413          	addi	s0,sp,16
    size_t diff = BLOCK_SIZE << level;
    80002d98:	000017b7          	lui	a5,0x1
    80002d9c:	00c7963b          	sllw	a2,a5,a2
    size_t off = (size_t)addr - (size_t)buddy->startAddr;
    80002da0:	00853783          	ld	a5,8(a0)
    80002da4:	40f587b3          	sub	a5,a1,a5
    if(diff & off)
    80002da8:	00f677b3          	and	a5,a2,a5
    80002dac:	00078a63          	beqz	a5,80002dc0 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x34>
        return (size_t)addr - diff;
    80002db0:	40c58533          	sub	a0,a1,a2
    else
        return (size_t)addr + diff;
}
    80002db4:	00813403          	ld	s0,8(sp)
    80002db8:	01010113          	addi	sp,sp,16
    80002dbc:	00008067          	ret
        return (size_t)addr + diff;
    80002dc0:	00c58533          	add	a0,a1,a2
    80002dc4:	ff1ff06f          	j	80002db4 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x28>

0000000080002dc8 <_Z5splitP14buddyAllocatorPvmmb>:
{
    80002dc8:	fd010113          	addi	sp,sp,-48
    80002dcc:	02113423          	sd	ra,40(sp)
    80002dd0:	02813023          	sd	s0,32(sp)
    80002dd4:	00913c23          	sd	s1,24(sp)
    80002dd8:	01213823          	sd	s2,16(sp)
    80002ddc:	01313423          	sd	s3,8(sp)
    80002de0:	01413023          	sd	s4,0(sp)
    80002de4:	03010413          	addi	s0,sp,48
    80002de8:	00050913          	mv	s2,a0
    80002dec:	00058a13          	mv	s4,a1
    if(!splitMore)
    80002df0:	06070a63          	beqz	a4,80002e64 <_Z5splitP14buddyAllocatorPvmmb+0x9c>
    80002df4:	00060993          	mv	s3,a2
        if(currLevel == finalLevel)
    80002df8:	04c68663          	beq	a3,a2,80002e44 <_Z5splitP14buddyAllocatorPvmmb+0x7c>
        size_t buddyBlock = getBuddyBlockAddr(buddy, addr, currLevel - 1); // currLevel - 1 for next step
    80002dfc:	fff68493          	addi	s1,a3,-1
    80002e00:	00048613          	mv	a2,s1
    80002e04:	00000097          	auipc	ra,0x0
    80002e08:	f88080e7          	jalr	-120(ra) # 80002d8c <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    80002e0c:	00050593          	mv	a1,a0
        split(buddy, (void*)buddyBlock, finalLevel, currLevel - 1, false); // continue splitting
    80002e10:	00000713          	li	a4,0
    80002e14:	00048693          	mv	a3,s1
    80002e18:	00098613          	mv	a2,s3
    80002e1c:	00090513          	mv	a0,s2
    80002e20:	00000097          	auipc	ra,0x0
    80002e24:	fa8080e7          	jalr	-88(ra) # 80002dc8 <_Z5splitP14buddyAllocatorPvmmb>
        split(buddy, addr, finalLevel, currLevel - 1, true); // continue splitting
    80002e28:	00100713          	li	a4,1
    80002e2c:	00048693          	mv	a3,s1
    80002e30:	00098613          	mv	a2,s3
    80002e34:	000a0593          	mv	a1,s4
    80002e38:	00090513          	mv	a0,s2
    80002e3c:	00000097          	auipc	ra,0x0
    80002e40:	f8c080e7          	jalr	-116(ra) # 80002dc8 <_Z5splitP14buddyAllocatorPvmmb>
}
    80002e44:	02813083          	ld	ra,40(sp)
    80002e48:	02013403          	ld	s0,32(sp)
    80002e4c:	01813483          	ld	s1,24(sp)
    80002e50:	01013903          	ld	s2,16(sp)
    80002e54:	00813983          	ld	s3,8(sp)
    80002e58:	00013a03          	ld	s4,0(sp)
    80002e5c:	03010113          	addi	sp,sp,48
    80002e60:	00008067          	ret
        addBlockToLevel(buddy, addr, currLevel);
    80002e64:	00068613          	mv	a2,a3
    80002e68:	00000097          	auipc	ra,0x0
    80002e6c:	ec4080e7          	jalr	-316(ra) # 80002d2c <_Z15addBlockToLevelP14buddyAllocatorPvm>
    80002e70:	fd5ff06f          	j	80002e44 <_Z5splitP14buddyAllocatorPvmmb+0x7c>

0000000080002e74 <_Z11buddy_allocP14buddyAllocatorm>:
{
    80002e74:	fd010113          	addi	sp,sp,-48
    80002e78:	02113423          	sd	ra,40(sp)
    80002e7c:	02813023          	sd	s0,32(sp)
    80002e80:	00913c23          	sd	s1,24(sp)
    80002e84:	01213823          	sd	s2,16(sp)
    80002e88:	01313423          	sd	s3,8(sp)
    80002e8c:	03010413          	addi	s0,sp,48
    80002e90:	00050493          	mv	s1,a0
    size_t level = getDeg2Ceil(numOfBlocks);
    80002e94:	00058513          	mv	a0,a1
    80002e98:	00000097          	auipc	ra,0x0
    80002e9c:	e60080e7          	jalr	-416(ra) # 80002cf8 <_Z11getDeg2Ceilm>
    80002ea0:	00050993          	mv	s3,a0
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002ea4:	00050693          	mv	a3,a0
    80002ea8:	0184b783          	ld	a5,24(s1)
    80002eac:	06d7ee63          	bltu	a5,a3,80002f28 <_Z11buddy_allocP14buddyAllocatorm+0xb4>
        if(buddy->bucket[i].first != nullptr)
    80002eb0:	00268793          	addi	a5,a3,2
    80002eb4:	00479793          	slli	a5,a5,0x4
    80002eb8:	00f487b3          	add	a5,s1,a5
    80002ebc:	0007b903          	ld	s2,0(a5) # 1000 <_entry-0x7ffff000>
    80002ec0:	00091663          	bnez	s2,80002ecc <_Z11buddy_allocP14buddyAllocatorm+0x58>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002ec4:	00168693          	addi	a3,a3,1
    80002ec8:	fe1ff06f          	j	80002ea8 <_Z11buddy_allocP14buddyAllocatorm+0x34>
            buddy->bucket[i].first = ret->next;
    80002ecc:	00093703          	ld	a4,0(s2)
    80002ed0:	00268793          	addi	a5,a3,2
    80002ed4:	00479793          	slli	a5,a5,0x4
    80002ed8:	00f487b3          	add	a5,s1,a5
    80002edc:	00e7b023          	sd	a4,0(a5)
            if(buddy->bucket[i].first == nullptr)
    80002ee0:	02070a63          	beqz	a4,80002f14 <_Z11buddy_allocP14buddyAllocatorm+0xa0>
            split(buddy, (void*)ret, level, i, true);
    80002ee4:	00100713          	li	a4,1
    80002ee8:	00098613          	mv	a2,s3
    80002eec:	00090593          	mv	a1,s2
    80002ef0:	00048513          	mv	a0,s1
    80002ef4:	00000097          	auipc	ra,0x0
    80002ef8:	ed4080e7          	jalr	-300(ra) # 80002dc8 <_Z5splitP14buddyAllocatorPvmmb>
            buddy->numOfFreeBlocks-= (1 << level);
    80002efc:	00100513          	li	a0,1
    80002f00:	0135153b          	sllw	a0,a0,s3
    80002f04:	0104b983          	ld	s3,16(s1)
    80002f08:	40a989b3          	sub	s3,s3,a0
    80002f0c:	0134b823          	sd	s3,16(s1)
            return ret;
    80002f10:	01c0006f          	j	80002f2c <_Z11buddy_allocP14buddyAllocatorm+0xb8>
                buddy->bucket[i].last = nullptr;
    80002f14:	00268793          	addi	a5,a3,2
    80002f18:	00479793          	slli	a5,a5,0x4
    80002f1c:	00f487b3          	add	a5,s1,a5
    80002f20:	0007b423          	sd	zero,8(a5)
    80002f24:	fc1ff06f          	j	80002ee4 <_Z11buddy_allocP14buddyAllocatorm+0x70>
    return nullptr;
    80002f28:	00000913          	li	s2,0
}
    80002f2c:	00090513          	mv	a0,s2
    80002f30:	02813083          	ld	ra,40(sp)
    80002f34:	02013403          	ld	s0,32(sp)
    80002f38:	01813483          	ld	s1,24(sp)
    80002f3c:	01013903          	ld	s2,16(sp)
    80002f40:	00813983          	ld	s3,8(sp)
    80002f44:	03010113          	addi	sp,sp,48
    80002f48:	00008067          	ret

0000000080002f4c <_Z9addBlocksP14buddyAllocatorPvm>:
{
    80002f4c:	fd010113          	addi	sp,sp,-48
    80002f50:	02113423          	sd	ra,40(sp)
    80002f54:	02813023          	sd	s0,32(sp)
    80002f58:	00913c23          	sd	s1,24(sp)
    80002f5c:	01213823          	sd	s2,16(sp)
    80002f60:	01313423          	sd	s3,8(sp)
    80002f64:	03010413          	addi	s0,sp,48
    80002f68:	00050493          	mv	s1,a0
    80002f6c:	00058993          	mv	s3,a1
    80002f70:	00060913          	mv	s2,a2
    if(level == buddy->maxLevel)
    80002f74:	01853783          	ld	a5,24(a0)
    80002f78:	02c78a63          	beq	a5,a2,80002fac <_Z9addBlocksP14buddyAllocatorPvm+0x60>
    size_t buddyBlockAddr = getBuddyBlockAddr(buddy,addr,level);
    80002f7c:	00000097          	auipc	ra,0x0
    80002f80:	e10080e7          	jalr	-496(ra) # 80002d8c <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    buddyBlock* curr = buddy->bucket[level].first;
    80002f84:	00290793          	addi	a5,s2,2
    80002f88:	00479793          	slli	a5,a5,0x4
    80002f8c:	00f487b3          	add	a5,s1,a5
    80002f90:	0007b783          	ld	a5,0(a5)
    buddyBlock* prev = nullptr;
    80002f94:	00000713          	li	a4,0
    while(curr != nullptr)
    80002f98:	0a078e63          	beqz	a5,80003054 <_Z9addBlocksP14buddyAllocatorPvm+0x108>
        if((size_t)curr == buddyBlockAddr)
    80002f9c:	00a78e63          	beq	a5,a0,80002fb8 <_Z9addBlocksP14buddyAllocatorPvm+0x6c>
        prev = curr;
    80002fa0:	00078713          	mv	a4,a5
        curr = curr->next;
    80002fa4:	0007b783          	ld	a5,0(a5)
    while(curr != nullptr)
    80002fa8:	ff1ff06f          	j	80002f98 <_Z9addBlocksP14buddyAllocatorPvm+0x4c>
        addBlockToLevel(buddy, addr, level);
    80002fac:	00000097          	auipc	ra,0x0
    80002fb0:	d80080e7          	jalr	-640(ra) # 80002d2c <_Z15addBlockToLevelP14buddyAllocatorPvm>
        return;
    80002fb4:	0b40006f          	j	80003068 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
            if(prev != nullptr)
    80002fb8:	04070863          	beqz	a4,80003008 <_Z9addBlocksP14buddyAllocatorPvm+0xbc>
                prev->next = curr->next;
    80002fbc:	0007b683          	ld	a3,0(a5)
    80002fc0:	00d73023          	sd	a3,0(a4)
                if(curr == buddy->bucket[level].last)
    80002fc4:	00290693          	addi	a3,s2,2
    80002fc8:	00469693          	slli	a3,a3,0x4
    80002fcc:	00d486b3          	add	a3,s1,a3
    80002fd0:	0086b683          	ld	a3,8(a3)
    80002fd4:	02f68063          	beq	a3,a5,80002ff4 <_Z9addBlocksP14buddyAllocatorPvm+0xa8>
            if((size_t)addr < buddyBlockAddr) addBlocks(buddy, addr, level + 1); //merge two chunks
    80002fd8:	06a9f263          	bgeu	s3,a0,8000303c <_Z9addBlocksP14buddyAllocatorPvm+0xf0>
    80002fdc:	00190613          	addi	a2,s2,1
    80002fe0:	00098593          	mv	a1,s3
    80002fe4:	00048513          	mv	a0,s1
    80002fe8:	00000097          	auipc	ra,0x0
    80002fec:	f64080e7          	jalr	-156(ra) # 80002f4c <_Z9addBlocksP14buddyAllocatorPvm>
    80002ff0:	0780006f          	j	80003068 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
                    buddy->bucket[level].last = prev;
    80002ff4:	00290793          	addi	a5,s2,2
    80002ff8:	00479793          	slli	a5,a5,0x4
    80002ffc:	00f487b3          	add	a5,s1,a5
    80003000:	00e7b423          	sd	a4,8(a5)
    80003004:	fd5ff06f          	j	80002fd8 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                if(curr->next == nullptr)
    80003008:	0007b703          	ld	a4,0(a5)
    8000300c:	00070c63          	beqz	a4,80003024 <_Z9addBlocksP14buddyAllocatorPvm+0xd8>
                    buddy->bucket[level].first = curr->next;
    80003010:	00290793          	addi	a5,s2,2
    80003014:	00479793          	slli	a5,a5,0x4
    80003018:	00f487b3          	add	a5,s1,a5
    8000301c:	00e7b023          	sd	a4,0(a5)
    80003020:	fb9ff06f          	j	80002fd8 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
    80003024:	00290793          	addi	a5,s2,2
    80003028:	00479793          	slli	a5,a5,0x4
    8000302c:	00f487b3          	add	a5,s1,a5
    80003030:	0007b423          	sd	zero,8(a5)
    80003034:	0007b023          	sd	zero,0(a5)
    80003038:	fa1ff06f          	j	80002fd8 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
            else addBlocks(buddy, (void*)buddyBlockAddr, level + 1); //merge two chunks
    8000303c:	00190613          	addi	a2,s2,1
    80003040:	00050593          	mv	a1,a0
    80003044:	00048513          	mv	a0,s1
    80003048:	00000097          	auipc	ra,0x0
    8000304c:	f04080e7          	jalr	-252(ra) # 80002f4c <_Z9addBlocksP14buddyAllocatorPvm>
            return;
    80003050:	0180006f          	j	80003068 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
    addBlockToLevel(buddy, addr, level);
    80003054:	00090613          	mv	a2,s2
    80003058:	00098593          	mv	a1,s3
    8000305c:	00048513          	mv	a0,s1
    80003060:	00000097          	auipc	ra,0x0
    80003064:	ccc080e7          	jalr	-820(ra) # 80002d2c <_Z15addBlockToLevelP14buddyAllocatorPvm>
}
    80003068:	02813083          	ld	ra,40(sp)
    8000306c:	02013403          	ld	s0,32(sp)
    80003070:	01813483          	ld	s1,24(sp)
    80003074:	01013903          	ld	s2,16(sp)
    80003078:	00813983          	ld	s3,8(sp)
    8000307c:	03010113          	addi	sp,sp,48
    80003080:	00008067          	ret

0000000080003084 <_Z10buddy_initPvm>:
{
    80003084:	fd010113          	addi	sp,sp,-48
    80003088:	02113423          	sd	ra,40(sp)
    8000308c:	02813023          	sd	s0,32(sp)
    80003090:	00913c23          	sd	s1,24(sp)
    80003094:	01213823          	sd	s2,16(sp)
    80003098:	01313423          	sd	s3,8(sp)
    8000309c:	03010413          	addi	s0,sp,48
    800030a0:	00058993          	mv	s3,a1
    size_t blockAddr = getBlockAddr((size_t)addr); //alling the address
    800030a4:	00050493          	mv	s1,a0
    800030a8:	00000097          	auipc	ra,0x0
    800030ac:	bcc080e7          	jalr	-1076(ra) # 80002c74 <_Z12getBlockAddrm>
    if((size_t)addr != blockAddr) // if start address not aligned
    800030b0:	00a48a63          	beq	s1,a0,800030c4 <_Z10buddy_initPvm+0x40>
        buddyAddr = getNextBlockAddr(blockAddr);
    800030b4:	00000097          	auipc	ra,0x0
    800030b8:	be0080e7          	jalr	-1056(ra) # 80002c94 <_Z16getNextBlockAddrm>
    800030bc:	00050493          	mv	s1,a0
        numOfBlocks--; //have to discard one block
    800030c0:	fff98993          	addi	s3,s3,-1
    numOfBlocks--; // take one block for buddy metadata
    800030c4:	fff98993          	addi	s3,s3,-1
    buddyAllocator* buddy = (buddyAllocator*)buddyAddr;
    800030c8:	00048913          	mv	s2,s1
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    800030cc:	00048513          	mv	a0,s1
    800030d0:	00000097          	auipc	ra,0x0
    800030d4:	bc4080e7          	jalr	-1084(ra) # 80002c94 <_Z16getNextBlockAddrm>
    800030d8:	00a4b423          	sd	a0,8(s1)
    buddy->numOfBlocks = numOfBlocks;
    800030dc:	0134b023          	sd	s3,0(s1)
    buddy->numOfFreeBlocks = numOfBlocks;
    800030e0:	0134b823          	sd	s3,16(s1)
    buddy->maxLevel = getDeg2Floor(numOfBlocks);
    800030e4:	00098513          	mv	a0,s3
    800030e8:	00000097          	auipc	ra,0x0
    800030ec:	bdc080e7          	jalr	-1060(ra) # 80002cc4 <_Z12getDeg2Floorm>
    800030f0:	00a4bc23          	sd	a0,24(s1)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    800030f4:	00000713          	li	a4,0
    800030f8:	02e56063          	bltu	a0,a4,80003118 <_Z10buddy_initPvm+0x94>
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;
    800030fc:	00270793          	addi	a5,a4,2
    80003100:	00479793          	slli	a5,a5,0x4
    80003104:	00f907b3          	add	a5,s2,a5
    80003108:	0007b423          	sd	zero,8(a5)
    8000310c:	0007b023          	sd	zero,0(a5)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80003110:	00170713          	addi	a4,a4,1
    80003114:	fe5ff06f          	j	800030f8 <_Z10buddy_initPvm+0x74>
    for(size_t i = 0;i < numOfBlocks;i++)
    80003118:	00000493          	li	s1,0
    8000311c:	0334f463          	bgeu	s1,s3,80003144 <_Z10buddy_initPvm+0xc0>
        addBlocks(buddy, (block*)buddy->startAddr + i, 0);
    80003120:	00893583          	ld	a1,8(s2)
    80003124:	00c49793          	slli	a5,s1,0xc
    80003128:	00000613          	li	a2,0
    8000312c:	00f585b3          	add	a1,a1,a5
    80003130:	00090513          	mv	a0,s2
    80003134:	00000097          	auipc	ra,0x0
    80003138:	e18080e7          	jalr	-488(ra) # 80002f4c <_Z9addBlocksP14buddyAllocatorPvm>
    for(size_t i = 0;i < numOfBlocks;i++)
    8000313c:	00148493          	addi	s1,s1,1
    80003140:	fddff06f          	j	8000311c <_Z10buddy_initPvm+0x98>
}
    80003144:	00090513          	mv	a0,s2
    80003148:	02813083          	ld	ra,40(sp)
    8000314c:	02013403          	ld	s0,32(sp)
    80003150:	01813483          	ld	s1,24(sp)
    80003154:	01013903          	ld	s2,16(sp)
    80003158:	00813983          	ld	s3,8(sp)
    8000315c:	03010113          	addi	sp,sp,48
    80003160:	00008067          	ret

0000000080003164 <_Z10buddy_freeP14buddyAllocatorPvm>:
{
    80003164:	fd010113          	addi	sp,sp,-48
    80003168:	02113423          	sd	ra,40(sp)
    8000316c:	02813023          	sd	s0,32(sp)
    80003170:	00913c23          	sd	s1,24(sp)
    80003174:	01213823          	sd	s2,16(sp)
    80003178:	01313423          	sd	s3,8(sp)
    8000317c:	03010413          	addi	s0,sp,48
    80003180:	00050493          	mv	s1,a0
    80003184:	00058993          	mv	s3,a1
    size_t level = getDeg2Ceil(numOfBlocks);
    80003188:	00060513          	mv	a0,a2
    8000318c:	00000097          	auipc	ra,0x0
    80003190:	b6c080e7          	jalr	-1172(ra) # 80002cf8 <_Z11getDeg2Ceilm>
    80003194:	00050913          	mv	s2,a0
    addBlocks(buddy, addr, level); //adds free blocks
    80003198:	00050613          	mv	a2,a0
    8000319c:	00098593          	mv	a1,s3
    800031a0:	00048513          	mv	a0,s1
    800031a4:	00000097          	auipc	ra,0x0
    800031a8:	da8080e7          	jalr	-600(ra) # 80002f4c <_Z9addBlocksP14buddyAllocatorPvm>
    buddy->numOfFreeBlocks += (1 << level);
    800031ac:	00100513          	li	a0,1
    800031b0:	0125153b          	sllw	a0,a0,s2
    800031b4:	0104b903          	ld	s2,16(s1)
    800031b8:	00a90933          	add	s2,s2,a0
    800031bc:	0124b823          	sd	s2,16(s1)
}
    800031c0:	02813083          	ld	ra,40(sp)
    800031c4:	02013403          	ld	s0,32(sp)
    800031c8:	01813483          	ld	s1,24(sp)
    800031cc:	01013903          	ld	s2,16(sp)
    800031d0:	00813983          	ld	s3,8(sp)
    800031d4:	03010113          	addi	sp,sp,48
    800031d8:	00008067          	ret

00000000800031dc <_Z14printBuddyInfoP14buddyAllocator>:

void printBuddyInfo(buddyAllocator* buddy)
{
    800031dc:	fd010113          	addi	sp,sp,-48
    800031e0:	02113423          	sd	ra,40(sp)
    800031e4:	02813023          	sd	s0,32(sp)
    800031e8:	00913c23          	sd	s1,24(sp)
    800031ec:	01213823          	sd	s2,16(sp)
    800031f0:	01313423          	sd	s3,8(sp)
    800031f4:	03010413          	addi	s0,sp,48
    800031f8:	00050993          	mv	s3,a0
    KConsole::trapPrintString("Buddy info-------------------------------------------\n");
    800031fc:	00006517          	auipc	a0,0x6
    80003200:	05c50513          	addi	a0,a0,92 # 80009258 <CONSOLE_STATUS+0x248>
    80003204:	00000097          	auipc	ra,0x0
    80003208:	5a0080e7          	jalr	1440(ra) # 800037a4 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Buddy starting address ", (size_t)buddy->startAddr, 16);
    8000320c:	01000613          	li	a2,16
    80003210:	0089b583          	ld	a1,8(s3)
    80003214:	00006517          	auipc	a0,0x6
    80003218:	07c50513          	addi	a0,a0,124 # 80009290 <CONSOLE_STATUS+0x280>
    8000321c:	00000097          	auipc	ra,0x0
    80003220:	660080e7          	jalr	1632(ra) # 8000387c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of blocks ", buddy->numOfBlocks);
    80003224:	00a00613          	li	a2,10
    80003228:	0009b583          	ld	a1,0(s3)
    8000322c:	00006517          	auipc	a0,0x6
    80003230:	07c50513          	addi	a0,a0,124 # 800092a8 <CONSOLE_STATUS+0x298>
    80003234:	00000097          	auipc	ra,0x0
    80003238:	648080e7          	jalr	1608(ra) # 8000387c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of free blocks ", buddy->numOfFreeBlocks);
    8000323c:	00a00613          	li	a2,10
    80003240:	0109b583          	ld	a1,16(s3)
    80003244:	00006517          	auipc	a0,0x6
    80003248:	07c50513          	addi	a0,a0,124 # 800092c0 <CONSOLE_STATUS+0x2b0>
    8000324c:	00000097          	auipc	ra,0x0
    80003250:	630080e7          	jalr	1584(ra) # 8000387c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    for(int i = buddy->maxLevel;i>=0;i--)
    80003254:	0189a903          	lw	s2,24(s3)
    80003258:	0080006f          	j	80003260 <_Z14printBuddyInfoP14buddyAllocator+0x84>
    8000325c:	fff9091b          	addiw	s2,s2,-1
    80003260:	06094663          	bltz	s2,800032cc <_Z14printBuddyInfoP14buddyAllocator+0xf0>
    {
        KConsole::trapPrintStringInt("Level ",i);
    80003264:	00a00613          	li	a2,10
    80003268:	00090593          	mv	a1,s2
    8000326c:	00006517          	auipc	a0,0x6
    80003270:	07450513          	addi	a0,a0,116 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003274:	00000097          	auipc	ra,0x0
    80003278:	608080e7          	jalr	1544(ra) # 8000387c <_ZN8KConsole18trapPrintStringIntEPKcmi>
        KConsole::trapPrintString("Free blocks on this level\n");
    8000327c:	00006517          	auipc	a0,0x6
    80003280:	06c50513          	addi	a0,a0,108 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80003284:	00000097          	auipc	ra,0x0
    80003288:	520080e7          	jalr	1312(ra) # 800037a4 <_ZN8KConsole15trapPrintStringEPKc>
        buddyBlock* curr = buddy->bucket[i].first;
    8000328c:	00290793          	addi	a5,s2,2
    80003290:	00479793          	slli	a5,a5,0x4
    80003294:	00f987b3          	add	a5,s3,a5
    80003298:	0007b483          	ld	s1,0(a5)
        while(curr != 0)
    8000329c:	fc0480e3          	beqz	s1,8000325c <_Z14printBuddyInfoP14buddyAllocator+0x80>
        {
            KConsole::trapPrintInt((size_t)curr, 16);
    800032a0:	00000613          	li	a2,0
    800032a4:	01000593          	li	a1,16
    800032a8:	00048513          	mv	a0,s1
    800032ac:	00000097          	auipc	ra,0x0
    800032b0:	53c080e7          	jalr	1340(ra) # 800037e8 <_ZN8KConsole12trapPrintIntEmii>
            KConsole::trapPrintString("\n");
    800032b4:	00006517          	auipc	a0,0x6
    800032b8:	44450513          	addi	a0,a0,1092 # 800096f8 <CONSOLE_STATUS+0x6e8>
    800032bc:	00000097          	auipc	ra,0x0
    800032c0:	4e8080e7          	jalr	1256(ra) # 800037a4 <_ZN8KConsole15trapPrintStringEPKc>
            curr = curr->next;
    800032c4:	0004b483          	ld	s1,0(s1)
        while(curr != 0)
    800032c8:	fd5ff06f          	j	8000329c <_Z14printBuddyInfoP14buddyAllocator+0xc0>
        }
    }
    KConsole::trapPrintString("End of buddy info-------------------------------------------\n");
    800032cc:	00006517          	auipc	a0,0x6
    800032d0:	03c50513          	addi	a0,a0,60 # 80009308 <CONSOLE_STATUS+0x2f8>
    800032d4:	00000097          	auipc	ra,0x0
    800032d8:	4d0080e7          	jalr	1232(ra) # 800037a4 <_ZN8KConsole15trapPrintStringEPKc>
    800032dc:	02813083          	ld	ra,40(sp)
    800032e0:	02013403          	ld	s0,32(sp)
    800032e4:	01813483          	ld	s1,24(sp)
    800032e8:	01013903          	ld	s2,16(sp)
    800032ec:	00813983          	ld	s3,8(sp)
    800032f0:	03010113          	addi	sp,sp,48
    800032f4:	00008067          	ret

00000000800032f8 <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    800032f8:	fe010113          	addi	sp,sp,-32
    800032fc:	00113c23          	sd	ra,24(sp)
    80003300:	00813823          	sd	s0,16(sp)
    80003304:	00913423          	sd	s1,8(sp)
    80003308:	01213023          	sd	s2,0(sp)
    8000330c:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80003310:	01800513          	li	a0,24
    80003314:	00002097          	auipc	ra,0x2
    80003318:	00c080e7          	jalr	12(ra) # 80005320 <_ZN10KSemaphorenwEm>
    8000331c:	00050493          	mv	s1,a0
    80003320:	00000593          	li	a1,0
    80003324:	00002097          	auipc	ra,0x2
    80003328:	d98080e7          	jalr	-616(ra) # 800050bc <_ZN10KSemaphoreC1Ei>
    8000332c:	00009797          	auipc	a5,0x9
    80003330:	8697b223          	sd	s1,-1948(a5) # 8000bb90 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80003334:	01800513          	li	a0,24
    80003338:	00002097          	auipc	ra,0x2
    8000333c:	fe8080e7          	jalr	-24(ra) # 80005320 <_ZN10KSemaphorenwEm>
    80003340:	00050493          	mv	s1,a0
    80003344:	00000593          	li	a1,0
    80003348:	00002097          	auipc	ra,0x2
    8000334c:	d74080e7          	jalr	-652(ra) # 800050bc <_ZN10KSemaphoreC1Ei>
    80003350:	00009797          	auipc	a5,0x9
    80003354:	8497b423          	sd	s1,-1976(a5) # 8000bb98 <_ZN8KConsole19hasCharactersOutputE>
}
    80003358:	01813083          	ld	ra,24(sp)
    8000335c:	01013403          	ld	s0,16(sp)
    80003360:	00813483          	ld	s1,8(sp)
    80003364:	00013903          	ld	s2,0(sp)
    80003368:	02010113          	addi	sp,sp,32
    8000336c:	00008067          	ret
    80003370:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80003374:	00048513          	mv	a0,s1
    80003378:	00002097          	auipc	ra,0x2
    8000337c:	054080e7          	jalr	84(ra) # 800053cc <_ZN10KSemaphoredlEPv>
    80003380:	00090513          	mv	a0,s2
    80003384:	0000e097          	auipc	ra,0xe
    80003388:	974080e7          	jalr	-1676(ra) # 80010cf8 <_Unwind_Resume>
    8000338c:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80003390:	00048513          	mv	a0,s1
    80003394:	00002097          	auipc	ra,0x2
    80003398:	038080e7          	jalr	56(ra) # 800053cc <_ZN10KSemaphoredlEPv>
    8000339c:	00090513          	mv	a0,s2
    800033a0:	0000e097          	auipc	ra,0xe
    800033a4:	958080e7          	jalr	-1704(ra) # 80010cf8 <_Unwind_Resume>

00000000800033a8 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    800033a8:	00008697          	auipc	a3,0x8
    800033ac:	7e868693          	addi	a3,a3,2024 # 8000bb90 <_ZN8KConsole18hasCharactersInputE>
    800033b0:	0106b603          	ld	a2,16(a3)
    800033b4:	00160793          	addi	a5,a2,1
    800033b8:	00002737          	lui	a4,0x2
    800033bc:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800033c0:	00e7f7b3          	and	a5,a5,a4
    800033c4:	0186b703          	ld	a4,24(a3)
    800033c8:	04e78263          	beq	a5,a4,8000340c <_ZN8KConsole17putCharacterInputEc+0x64>
{
    800033cc:	ff010113          	addi	sp,sp,-16
    800033d0:	00113423          	sd	ra,8(sp)
    800033d4:	00813023          	sd	s0,0(sp)
    800033d8:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    800033dc:	0000a717          	auipc	a4,0xa
    800033e0:	7f470713          	addi	a4,a4,2036 # 8000dbd0 <_ZN8KConsole11inputBufferE>
    800033e4:	00c70633          	add	a2,a4,a2
    800033e8:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    800033ec:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    800033f0:	0006b503          	ld	a0,0(a3)
    800033f4:	00002097          	auipc	ra,0x2
    800033f8:	ee4080e7          	jalr	-284(ra) # 800052d8 <_ZN10KSemaphore6signalEv>
}
    800033fc:	00813083          	ld	ra,8(sp)
    80003400:	00013403          	ld	s0,0(sp)
    80003404:	01010113          	addi	sp,sp,16
    80003408:	00008067          	ret
    8000340c:	00008067          	ret

0000000080003410 <_ZN8KConsole24getCharactersFromConsoleEv>:
    uint64 operation = *(uint8*)CONSOLE_STATUS;
    80003410:	00008797          	auipc	a5,0x8
    80003414:	6787b783          	ld	a5,1656(a5) # 8000ba88 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003418:	0007b783          	ld	a5,0(a5)
    8000341c:	0007c783          	lbu	a5,0(a5)
    if(operation & KConsole::STATUS_READ_MASK)
    80003420:	0017f793          	andi	a5,a5,1
    80003424:	02078063          	beqz	a5,80003444 <_ZN8KConsole24getCharactersFromConsoleEv+0x34>
        char c = *(uint8*)CONSOLE_TX_DATA;
    80003428:	00008797          	auipc	a5,0x8
    8000342c:	6887b783          	ld	a5,1672(a5) # 8000bab0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003430:	0007b783          	ld	a5,0(a5)
    80003434:	0007c503          	lbu	a0,0(a5)
        if(KConsole::pendingGetc > 0)
    80003438:	00008797          	auipc	a5,0x8
    8000343c:	7787b783          	ld	a5,1912(a5) # 8000bbb0 <_ZN8KConsole11pendingGetcE>
    80003440:	00079463          	bnez	a5,80003448 <_ZN8KConsole24getCharactersFromConsoleEv+0x38>
    80003444:	00008067          	ret
{
    80003448:	ff010113          	addi	sp,sp,-16
    8000344c:	00113423          	sd	ra,8(sp)
    80003450:	00813023          	sd	s0,0(sp)
    80003454:	01010413          	addi	s0,sp,16
            KConsole::pendingGetc--;
    80003458:	fff78793          	addi	a5,a5,-1
    8000345c:	00008717          	auipc	a4,0x8
    80003460:	74f73a23          	sd	a5,1876(a4) # 8000bbb0 <_ZN8KConsole11pendingGetcE>
            KConsole::putCharacterInput(c);
    80003464:	00000097          	auipc	ra,0x0
    80003468:	f44080e7          	jalr	-188(ra) # 800033a8 <_ZN8KConsole17putCharacterInputEc>
}
    8000346c:	00813083          	ld	ra,8(sp)
    80003470:	00013403          	ld	s0,0(sp)
    80003474:	01010113          	addi	sp,sp,16
    80003478:	00008067          	ret

000000008000347c <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    8000347c:	fe010113          	addi	sp,sp,-32
    80003480:	00113c23          	sd	ra,24(sp)
    80003484:	00813823          	sd	s0,16(sp)
    80003488:	00913423          	sd	s1,8(sp)
    8000348c:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80003490:	00008497          	auipc	s1,0x8
    80003494:	70048493          	addi	s1,s1,1792 # 8000bb90 <_ZN8KConsole18hasCharactersInputE>
    80003498:	0004b503          	ld	a0,0(s1)
    8000349c:	00002097          	auipc	ra,0x2
    800034a0:	cc4080e7          	jalr	-828(ra) # 80005160 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    800034a4:	0184b783          	ld	a5,24(s1)
    800034a8:	0104b703          	ld	a4,16(s1)
    800034ac:	04e78063          	beq	a5,a4,800034ec <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    800034b0:	0000a717          	auipc	a4,0xa
    800034b4:	72070713          	addi	a4,a4,1824 # 8000dbd0 <_ZN8KConsole11inputBufferE>
    800034b8:	00f70733          	add	a4,a4,a5
    800034bc:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    800034c0:	00178793          	addi	a5,a5,1
    800034c4:	00002737          	lui	a4,0x2
    800034c8:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800034cc:	00e7f7b3          	and	a5,a5,a4
    800034d0:	00008717          	auipc	a4,0x8
    800034d4:	6cf73c23          	sd	a5,1752(a4) # 8000bba8 <_ZN8KConsole9inputHeadE>
    return c;
}
    800034d8:	01813083          	ld	ra,24(sp)
    800034dc:	01013403          	ld	s0,16(sp)
    800034e0:	00813483          	ld	s1,8(sp)
    800034e4:	02010113          	addi	sp,sp,32
    800034e8:	00008067          	ret
        return -1;
    800034ec:	0ff00513          	li	a0,255
    800034f0:	fe9ff06f          	j	800034d8 <_ZN8KConsole17getCharacterInputEv+0x5c>

00000000800034f4 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    800034f4:	00008697          	auipc	a3,0x8
    800034f8:	69c68693          	addi	a3,a3,1692 # 8000bb90 <_ZN8KConsole18hasCharactersInputE>
    800034fc:	0286b603          	ld	a2,40(a3)
    80003500:	00160793          	addi	a5,a2,1
    80003504:	00002737          	lui	a4,0x2
    80003508:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    8000350c:	00e7f7b3          	and	a5,a5,a4
    80003510:	0306b703          	ld	a4,48(a3)
    80003514:	04e78a63          	beq	a5,a4,80003568 <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    80003518:	ff010113          	addi	sp,sp,-16
    8000351c:	00113423          	sd	ra,8(sp)
    80003520:	00813023          	sd	s0,0(sp)
    80003524:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80003528:	00068713          	mv	a4,a3
    8000352c:	0386b683          	ld	a3,56(a3)
    80003530:	00168693          	addi	a3,a3,1
    80003534:	02d73c23          	sd	a3,56(a4)
    outputBuffer[outputTail] = c;
    80003538:	00008697          	auipc	a3,0x8
    8000353c:	69868693          	addi	a3,a3,1688 # 8000bbd0 <_ZN8KConsole12outputBufferE>
    80003540:	00c68633          	add	a2,a3,a2
    80003544:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80003548:	02f73423          	sd	a5,40(a4)
    hasCharactersOutput->signal();
    8000354c:	00873503          	ld	a0,8(a4)
    80003550:	00002097          	auipc	ra,0x2
    80003554:	d88080e7          	jalr	-632(ra) # 800052d8 <_ZN10KSemaphore6signalEv>
}
    80003558:	00813083          	ld	ra,8(sp)
    8000355c:	00013403          	ld	s0,0(sp)
    80003560:	01010113          	addi	sp,sp,16
    80003564:	00008067          	ret
    80003568:	00008067          	ret

000000008000356c <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    8000356c:	fe010113          	addi	sp,sp,-32
    80003570:	00113c23          	sd	ra,24(sp)
    80003574:	00813823          	sd	s0,16(sp)
    80003578:	00913423          	sd	s1,8(sp)
    8000357c:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80003580:	00008497          	auipc	s1,0x8
    80003584:	61048493          	addi	s1,s1,1552 # 8000bb90 <_ZN8KConsole18hasCharactersInputE>
    80003588:	0084b503          	ld	a0,8(s1)
    8000358c:	00002097          	auipc	ra,0x2
    80003590:	bd4080e7          	jalr	-1068(ra) # 80005160 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80003594:	0304b783          	ld	a5,48(s1)
    80003598:	0284b703          	ld	a4,40(s1)
    8000359c:	04e78063          	beq	a5,a4,800035dc <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;
    char c = outputBuffer[outputHead];
    800035a0:	00008717          	auipc	a4,0x8
    800035a4:	63070713          	addi	a4,a4,1584 # 8000bbd0 <_ZN8KConsole12outputBufferE>
    800035a8:	00f70733          	add	a4,a4,a5
    800035ac:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    800035b0:	00178793          	addi	a5,a5,1
    800035b4:	00002737          	lui	a4,0x2
    800035b8:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800035bc:	00e7f7b3          	and	a5,a5,a4
    800035c0:	00008717          	auipc	a4,0x8
    800035c4:	60f73023          	sd	a5,1536(a4) # 8000bbc0 <_ZN8KConsole10outputHeadE>
    return c;
}
    800035c8:	01813083          	ld	ra,24(sp)
    800035cc:	01013403          	ld	s0,16(sp)
    800035d0:	00813483          	ld	s1,8(sp)
    800035d4:	02010113          	addi	sp,sp,32
    800035d8:	00008067          	ret
        return -1;
    800035dc:	0ff00513          	li	a0,255
    800035e0:	fe9ff06f          	j	800035c8 <_ZN8KConsole18getCharacterOutputEv+0x5c>

00000000800035e4 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    800035e4:	ff010113          	addi	sp,sp,-16
    800035e8:	00113423          	sd	ra,8(sp)
    800035ec:	00813023          	sd	s0,0(sp)
    800035f0:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    800035f4:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    800035f8:	0ff57513          	andi	a0,a0,255
    800035fc:	00000097          	auipc	ra,0x0
    80003600:	ef8080e7          	jalr	-264(ra) # 800034f4 <_ZN8KConsole18putCharacterOutputEc>
}
    80003604:	00813083          	ld	ra,8(sp)
    80003608:	00013403          	ld	s0,0(sp)
    8000360c:	01010113          	addi	sp,sp,16
    80003610:	00008067          	ret

0000000080003614 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    80003614:	fe010113          	addi	sp,sp,-32
    80003618:	00113c23          	sd	ra,24(sp)
    8000361c:	00813823          	sd	s0,16(sp)
    80003620:	00913423          	sd	s1,8(sp)
    80003624:	02010413          	addi	s0,sp,32
    pendingGetc++;
    80003628:	00008717          	auipc	a4,0x8
    8000362c:	56870713          	addi	a4,a4,1384 # 8000bb90 <_ZN8KConsole18hasCharactersInputE>
    80003630:	02073783          	ld	a5,32(a4)
    80003634:	00178793          	addi	a5,a5,1
    80003638:	02f73023          	sd	a5,32(a4)
    char ch;
    ch = getCharacterInput();
    8000363c:	00000097          	auipc	ra,0x0
    80003640:	e40080e7          	jalr	-448(ra) # 8000347c <_ZN8KConsole17getCharacterInputEv>
    80003644:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    80003648:	01b00793          	li	a5,27
    8000364c:	02f51663          	bne	a0,a5,80003678 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    80003650:	00d00793          	li	a5,13
    80003654:	02f48863          	beq	s1,a5,80003684 <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003658:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    8000365c:	00001097          	auipc	ra,0x1
    80003660:	10c080e7          	jalr	268(ra) # 80004768 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003664:	01813083          	ld	ra,24(sp)
    80003668:	01013403          	ld	s0,16(sp)
    8000366c:	00813483          	ld	s1,8(sp)
    80003670:	02010113          	addi	sp,sp,32
    80003674:	00008067          	ret
        putCharacterOutput(ch);
    80003678:	00000097          	auipc	ra,0x0
    8000367c:	e7c080e7          	jalr	-388(ra) # 800034f4 <_ZN8KConsole18putCharacterOutputEc>
    80003680:	fd1ff06f          	j	80003650 <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    80003684:	00d00513          	li	a0,13
    80003688:	00000097          	auipc	ra,0x0
    8000368c:	e6c080e7          	jalr	-404(ra) # 800034f4 <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    80003690:	00a00513          	li	a0,10
    80003694:	00000097          	auipc	ra,0x0
    80003698:	e60080e7          	jalr	-416(ra) # 800034f4 <_ZN8KConsole18putCharacterOutputEc>
    8000369c:	fbdff06f          	j	80003658 <_ZN8KConsole11getcHandlerEv+0x44>

00000000800036a0 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    800036a0:	ff010113          	addi	sp,sp,-16
    800036a4:	00813423          	sd	s0,8(sp)
    800036a8:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    800036ac:	00008517          	auipc	a0,0x8
    800036b0:	51c53503          	ld	a0,1308(a0) # 8000bbc8 <_ZN8KConsole11pendingPutcE>
    800036b4:	00153513          	seqz	a0,a0
    800036b8:	00813403          	ld	s0,8(sp)
    800036bc:	01010113          	addi	sp,sp,16
    800036c0:	00008067          	ret

00000000800036c4 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    800036c4:	fe010113          	addi	sp,sp,-32
    800036c8:	00113c23          	sd	ra,24(sp)
    800036cc:	00813823          	sd	s0,16(sp)
    800036d0:	02010413          	addi	s0,sp,32
    800036d4:	0180006f          	j	800036ec <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit();
    800036d8:	fffff097          	auipc	ra,0xfffff
    800036dc:	d40080e7          	jalr	-704(ra) # 80002418 <_Z11thread_exitv>
    800036e0:	0340006f          	j	80003714 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch();
    800036e4:	fffff097          	auipc	ra,0xfffff
    800036e8:	d14080e7          	jalr	-748(ra) # 800023f8 <_Z15thread_dispatchv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    800036ec:	00008797          	auipc	a5,0x8
    800036f0:	3fc7b783          	ld	a5,1020(a5) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x70>
    800036f4:	0007c783          	lbu	a5,0(a5)
    800036f8:	00078e63          	beqz	a5,80003714 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800036fc:	00000097          	auipc	ra,0x0
    80003700:	fa4080e7          	jalr	-92(ra) # 800036a0 <_ZN8KConsole17outputBufferEmptyEv>
    80003704:	00050863          	beqz	a0,80003714 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80003708:	00008797          	auipc	a5,0x8
    8000370c:	4a87b783          	ld	a5,1192(a5) # 8000bbb0 <_ZN8KConsole11pendingGetcE>
    80003710:	fc0784e3          	beqz	a5,800036d8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 operation = *(uint8*)CONSOLE_STATUS;
    80003714:	00008797          	auipc	a5,0x8
    80003718:	3747b783          	ld	a5,884(a5) # 8000ba88 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000371c:	0007b783          	ld	a5,0(a5)
    80003720:	0007c783          	lbu	a5,0(a5)
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    80003724:	0207f793          	andi	a5,a5,32
    80003728:	fa078ee3          	beqz	a5,800036e4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    8000372c:	00008797          	auipc	a5,0x8
    80003730:	49c7b783          	ld	a5,1180(a5) # 8000bbc8 <_ZN8KConsole11pendingPutcE>
    80003734:	fa0788e3          	beqz	a5,800036e4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80003738:	fffff097          	auipc	ra,0xfffff
    8000373c:	ee8080e7          	jalr	-280(ra) # 80002620 <_Z20sysCallGetCharOutputv>
    80003740:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80003744:	00008717          	auipc	a4,0x8
    80003748:	44c70713          	addi	a4,a4,1100 # 8000bb90 <_ZN8KConsole18hasCharactersInputE>
    8000374c:	03873783          	ld	a5,56(a4)
    80003750:	fff78793          	addi	a5,a5,-1
    80003754:	02f73c23          	sd	a5,56(a4)
                *(uint8*)CONSOLE_RX_DATA = c;
    80003758:	00008797          	auipc	a5,0x8
    8000375c:	3287b783          	ld	a5,808(a5) # 8000ba80 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003760:	0007b783          	ld	a5,0(a5)
    80003764:	fef44703          	lbu	a4,-17(s0)
    80003768:	00e78023          	sb	a4,0(a5)
    8000376c:	f81ff06f          	j	800036ec <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

0000000080003770 <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    80003770:	ff010113          	addi	sp,sp,-16
    80003774:	00113423          	sd	ra,8(sp)
    80003778:	00813023          	sd	s0,0(sp)
    8000377c:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    80003780:	00000097          	auipc	ra,0x0
    80003784:	dec080e7          	jalr	-532(ra) # 8000356c <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003788:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    8000378c:	00001097          	auipc	ra,0x1
    80003790:	fdc080e7          	jalr	-36(ra) # 80004768 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003794:	00813083          	ld	ra,8(sp)
    80003798:	00013403          	ld	s0,0(sp)
    8000379c:	01010113          	addi	sp,sp,16
    800037a0:	00008067          	ret

00000000800037a4 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    800037a4:	fe010113          	addi	sp,sp,-32
    800037a8:	00113c23          	sd	ra,24(sp)
    800037ac:	00813823          	sd	s0,16(sp)
    800037b0:	00913423          	sd	s1,8(sp)
    800037b4:	02010413          	addi	s0,sp,32
    800037b8:	00050493          	mv	s1,a0
    while (*string != '\0')
    800037bc:	0004c503          	lbu	a0,0(s1)
    800037c0:	00050a63          	beqz	a0,800037d4 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    800037c4:	00000097          	auipc	ra,0x0
    800037c8:	d30080e7          	jalr	-720(ra) # 800034f4 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    800037cc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800037d0:	fedff06f          	j	800037bc <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    800037d4:	01813083          	ld	ra,24(sp)
    800037d8:	01013403          	ld	s0,16(sp)
    800037dc:	00813483          	ld	s1,8(sp)
    800037e0:	02010113          	addi	sp,sp,32
    800037e4:	00008067          	ret

00000000800037e8 <_ZN8KConsole12trapPrintIntEmii>:

void KConsole::trapPrintInt(size_t xx, int base, int sgn)
{
    800037e8:	fb010113          	addi	sp,sp,-80
    800037ec:	04113423          	sd	ra,72(sp)
    800037f0:	04813023          	sd	s0,64(sp)
    800037f4:	02913c23          	sd	s1,56(sp)
    800037f8:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    800037fc:	00006797          	auipc	a5,0x6
    80003800:	b4c78793          	addi	a5,a5,-1204 # 80009348 <CONSOLE_STATUS+0x338>
    80003804:	0007b703          	ld	a4,0(a5)
    80003808:	fce43423          	sd	a4,-56(s0)
    8000380c:	0087b703          	ld	a4,8(a5)
    80003810:	fce43823          	sd	a4,-48(s0)
    80003814:	0107c783          	lbu	a5,16(a5)
    80003818:	fcf40c23          	sb	a5,-40(s0)
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    8000381c:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80003820:	02b57733          	remu	a4,a0,a1
    80003824:	fe040693          	addi	a3,s0,-32
    80003828:	00e68733          	add	a4,a3,a4
    8000382c:	fe874703          	lbu	a4,-24(a4)
    80003830:	009687b3          	add	a5,a3,s1
    80003834:	0014849b          	addiw	s1,s1,1
    80003838:	fce78c23          	sb	a4,-40(a5)
    }while((x /= base) != 0);
    8000383c:	00050793          	mv	a5,a0
    80003840:	02b55533          	divu	a0,a0,a1
    80003844:	fcb7fee3          	bgeu	a5,a1,80003820 <_ZN8KConsole12trapPrintIntEmii+0x38>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80003848:	fff4849b          	addiw	s1,s1,-1
    8000384c:	0004ce63          	bltz	s1,80003868 <_ZN8KConsole12trapPrintIntEmii+0x80>
        KConsole::putCharacterOutput(buf[i]);
    80003850:	fe040793          	addi	a5,s0,-32
    80003854:	009787b3          	add	a5,a5,s1
    80003858:	fd87c503          	lbu	a0,-40(a5)
    8000385c:	00000097          	auipc	ra,0x0
    80003860:	c98080e7          	jalr	-872(ra) # 800034f4 <_ZN8KConsole18putCharacterOutputEc>
    80003864:	fe5ff06f          	j	80003848 <_ZN8KConsole12trapPrintIntEmii+0x60>
}
    80003868:	04813083          	ld	ra,72(sp)
    8000386c:	04013403          	ld	s0,64(sp)
    80003870:	03813483          	ld	s1,56(sp)
    80003874:	05010113          	addi	sp,sp,80
    80003878:	00008067          	ret

000000008000387c <_ZN8KConsole18trapPrintStringIntEPKcmi>:

void KConsole::trapPrintStringInt(const char *string, size_t xx, int base)
{
    8000387c:	fe010113          	addi	sp,sp,-32
    80003880:	00113c23          	sd	ra,24(sp)
    80003884:	00813823          	sd	s0,16(sp)
    80003888:	00913423          	sd	s1,8(sp)
    8000388c:	01213023          	sd	s2,0(sp)
    80003890:	02010413          	addi	s0,sp,32
    80003894:	00058493          	mv	s1,a1
    80003898:	00060913          	mv	s2,a2
    trapPrintString(string);
    8000389c:	00000097          	auipc	ra,0x0
    800038a0:	f08080e7          	jalr	-248(ra) # 800037a4 <_ZN8KConsole15trapPrintStringEPKc>
    trapPrintInt(xx,base);
    800038a4:	00000613          	li	a2,0
    800038a8:	00090593          	mv	a1,s2
    800038ac:	00048513          	mv	a0,s1
    800038b0:	00000097          	auipc	ra,0x0
    800038b4:	f38080e7          	jalr	-200(ra) # 800037e8 <_ZN8KConsole12trapPrintIntEmii>
    trapPrintString("\n");
    800038b8:	00006517          	auipc	a0,0x6
    800038bc:	e4050513          	addi	a0,a0,-448 # 800096f8 <CONSOLE_STATUS+0x6e8>
    800038c0:	00000097          	auipc	ra,0x0
    800038c4:	ee4080e7          	jalr	-284(ra) # 800037a4 <_ZN8KConsole15trapPrintStringEPKc>
}
    800038c8:	01813083          	ld	ra,24(sp)
    800038cc:	01013403          	ld	s0,16(sp)
    800038d0:	00813483          	ld	s1,8(sp)
    800038d4:	00013903          	ld	s2,0(sp)
    800038d8:	02010113          	addi	sp,sp,32
    800038dc:	00008067          	ret

00000000800038e0 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    800038e0:	ff010113          	addi	sp,sp,-16
    800038e4:	00813423          	sd	s0,8(sp)
    800038e8:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    800038ec:	00008797          	auipc	a5,0x8
    800038f0:	2047b783          	ld	a5,516(a5) # 8000baf0 <_GLOBAL_OFFSET_TABLE_+0x78>
    800038f4:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    800038f8:	00500793          	li	a5,5
    800038fc:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003900:	0000c797          	auipc	a5,0xc
    80003904:	2d07b783          	ld	a5,720(a5) # 8000fbd0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80003908:	00000593          	li	a1,0
    while(curr != 0)
    8000390c:	02078063          	beqz	a5,8000392c <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80003910:	02063683          	ld	a3,32(a2)
    80003914:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80003918:	00e6e863          	bltu	a3,a4,80003928 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    8000391c:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80003920:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003924:	fe9ff06f          	j	8000390c <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80003928:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    8000392c:	00058a63          	beqz	a1,80003940 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    80003930:	00c5b423          	sd	a2,8(a1)
}
    80003934:	00813403          	ld	s0,8(sp)
    80003938:	01010113          	addi	sp,sp,16
    8000393c:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80003940:	0000c797          	auipc	a5,0xc
    80003944:	28c7b823          	sd	a2,656(a5) # 8000fbd0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003948:	fedff06f          	j	80003934 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

000000008000394c <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    8000394c:	0000c517          	auipc	a0,0xc
    80003950:	28453503          	ld	a0,644(a0) # 8000fbd0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80003954:	06050e63          	beqz	a0,800039d0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003958:	06050c63          	beqz	a0,800039d0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    8000395c:	02053783          	ld	a5,32(a0)
    80003960:	00008717          	auipc	a4,0x8
    80003964:	16873703          	ld	a4,360(a4) # 8000bac8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003968:	00073703          	ld	a4,0(a4)
    8000396c:	06f76263          	bltu	a4,a5,800039d0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    80003970:	fe010113          	addi	sp,sp,-32
    80003974:	00113c23          	sd	ra,24(sp)
    80003978:	00813823          	sd	s0,16(sp)
    8000397c:	00913423          	sd	s1,8(sp)
    80003980:	02010413          	addi	s0,sp,32
    80003984:	0180006f          	j	8000399c <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003988:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    8000398c:	00008717          	auipc	a4,0x8
    80003990:	13c73703          	ld	a4,316(a4) # 8000bac8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003994:	00073703          	ld	a4,0(a4)
    80003998:	02f76263          	bltu	a4,a5,800039bc <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    8000399c:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    800039a0:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    800039a4:	00000097          	auipc	ra,0x0
    800039a8:	0b8080e7          	jalr	184(ra) # 80003a5c <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    800039ac:	0000c797          	auipc	a5,0xc
    800039b0:	2297b223          	sd	s1,548(a5) # 8000fbd0 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    800039b4:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800039b8:	fc0498e3          	bnez	s1,80003988 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    800039bc:	01813083          	ld	ra,24(sp)
    800039c0:	01013403          	ld	s0,16(sp)
    800039c4:	00813483          	ld	s1,8(sp)
    800039c8:	02010113          	addi	sp,sp,32
    800039cc:	00008067          	ret
    800039d0:	00008067          	ret

00000000800039d4 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    800039d4:	ff010113          	addi	sp,sp,-16
    800039d8:	00113423          	sd	ra,8(sp)
    800039dc:	00813023          	sd	s0,0(sp)
    800039e0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    800039e4:	00001097          	auipc	ra,0x1
    800039e8:	488080e7          	jalr	1160(ra) # 80004e6c <_ZN15MemoryAllocator7kmallocEm>
}
    800039ec:	00813083          	ld	ra,8(sp)
    800039f0:	00013403          	ld	s0,0(sp)
    800039f4:	01010113          	addi	sp,sp,16
    800039f8:	00008067          	ret

00000000800039fc <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    800039fc:	ff010113          	addi	sp,sp,-16
    80003a00:	00113423          	sd	ra,8(sp)
    80003a04:	00813023          	sd	s0,0(sp)
    80003a08:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80003a0c:	00001097          	auipc	ra,0x1
    80003a10:	4c4080e7          	jalr	1220(ra) # 80004ed0 <_ZN15MemoryAllocator5kfreeEPv>
}
    80003a14:	00813083          	ld	ra,8(sp)
    80003a18:	00013403          	ld	s0,0(sp)
    80003a1c:	01010113          	addi	sp,sp,16
    80003a20:	00008067          	ret

0000000080003a24 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003a24:	ff010113          	addi	sp,sp,-16
    80003a28:	00813423          	sd	s0,8(sp)
    80003a2c:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80003a30:	0000c797          	auipc	a5,0xc
    80003a34:	1a87b783          	ld	a5,424(a5) # 8000fbd8 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003a38:	00000513          	li	a0,0
    while(curr != 0)
    80003a3c:	00078863          	beqz	a5,80003a4c <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80003a40:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003a44:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003a48:	ff5ff06f          	j	80003a3c <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003a4c:	0005051b          	sext.w	a0,a0
    80003a50:	00813403          	ld	s0,8(sp)
    80003a54:	01010113          	addi	sp,sp,16
    80003a58:	00008067          	ret

0000000080003a5c <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003a5c:	ff010113          	addi	sp,sp,-16
    80003a60:	00813423          	sd	s0,8(sp)
    80003a64:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003a68:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80003a6c:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80003a70:	0000c797          	auipc	a5,0xc
    80003a74:	1687b783          	ld	a5,360(a5) # 8000fbd8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003a78:	02078263          	beqz	a5,80003a9c <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003a7c:	0000c797          	auipc	a5,0xc
    80003a80:	15c78793          	addi	a5,a5,348 # 8000fbd8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003a84:	0087b703          	ld	a4,8(a5)
    80003a88:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003a8c:	00a7b423          	sd	a0,8(a5)
    }
}
    80003a90:	00813403          	ld	s0,8(sp)
    80003a94:	01010113          	addi	sp,sp,16
    80003a98:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003a9c:	0000c797          	auipc	a5,0xc
    80003aa0:	13c78793          	addi	a5,a5,316 # 8000fbd8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003aa4:	00a7b423          	sd	a0,8(a5)
    80003aa8:	00a7b023          	sd	a0,0(a5)
    80003aac:	fe5ff06f          	j	80003a90 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080003ab0 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80003ab0:	ff010113          	addi	sp,sp,-16
    80003ab4:	00813423          	sd	s0,8(sp)
    80003ab8:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80003abc:	0000c517          	auipc	a0,0xc
    80003ac0:	11c53503          	ld	a0,284(a0) # 8000fbd8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003ac4:	00050c63          	beqz	a0,80003adc <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003ac8:	00853783          	ld	a5,8(a0)
    80003acc:	00078e63          	beqz	a5,80003ae8 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80003ad0:	0000c717          	auipc	a4,0xc
    80003ad4:	10f73423          	sd	a5,264(a4) # 8000fbd8 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003ad8:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003adc:	00813403          	ld	s0,8(sp)
    80003ae0:	01010113          	addi	sp,sp,16
    80003ae4:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003ae8:	0000c797          	auipc	a5,0xc
    80003aec:	0f078793          	addi	a5,a5,240 # 8000fbd8 <_ZN9Scheduler16schedulerPCBHeadE>
    80003af0:	0007b423          	sd	zero,8(a5)
    80003af4:	0007b023          	sd	zero,0(a5)
    80003af8:	fe1ff06f          	j	80003ad8 <_ZN9Scheduler3getEv+0x28>

0000000080003afc <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    80003afc:	fe010113          	addi	sp,sp,-32
    80003b00:	00113c23          	sd	ra,24(sp)
    80003b04:	00813823          	sd	s0,16(sp)
    80003b08:	00913423          	sd	s1,8(sp)
    80003b0c:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    80003b10:	0000c497          	auipc	s1,0xc
    80003b14:	0c84b483          	ld	s1,200(s1) # 8000fbd8 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003b18:	02048863          	beqz	s1,80003b48 <_ZN9Scheduler5printEv+0x4c>
    {
        KConsole::trapPrintInt((uint64)curr, 16);
    80003b1c:	00000613          	li	a2,0
    80003b20:	01000593          	li	a1,16
    80003b24:	00048513          	mv	a0,s1
    80003b28:	00000097          	auipc	ra,0x0
    80003b2c:	cc0080e7          	jalr	-832(ra) # 800037e8 <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    80003b30:	00006517          	auipc	a0,0x6
    80003b34:	bc850513          	addi	a0,a0,-1080 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80003b38:	00000097          	auipc	ra,0x0
    80003b3c:	c6c080e7          	jalr	-916(ra) # 800037a4 <_ZN8KConsole15trapPrintStringEPKc>
        curr = curr->nextPCB;
    80003b40:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003b44:	fd5ff06f          	j	80003b18 <_ZN9Scheduler5printEv+0x1c>
    }
}
    80003b48:	01813083          	ld	ra,24(sp)
    80003b4c:	01013403          	ld	s0,16(sp)
    80003b50:	00813483          	ld	s1,8(sp)
    80003b54:	02010113          	addi	sp,sp,32
    80003b58:	00008067          	ret

0000000080003b5c <main>:
#include "../h/Riscv.hpp"

void main()
{
    80003b5c:	ff010113          	addi	sp,sp,-16
    80003b60:	00113423          	sd	ra,8(sp)
    80003b64:	00813023          	sd	s0,0(sp)
    80003b68:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003b6c:	00001097          	auipc	ra,0x1
    80003b70:	b3c080e7          	jalr	-1220(ra) # 800046a8 <_ZN5Riscv10kernelMainEv>
    80003b74:	00813083          	ld	ra,8(sp)
    80003b78:	00013403          	ld	s0,0(sp)
    80003b7c:	01010113          	addi	sp,sp,16
    80003b80:	00008067          	ret

0000000080003b84 <_Z14buddyInitTest1v>:
#include "../h/buddyTests.hpp"
#include "../h/KConsole.hpp"
#include "../h/MemoryAllocator.hpp"

void buddyInitTest1()
{
    80003b84:	ff010113          	addi	sp,sp,-16
    80003b88:	00113423          	sd	ra,8(sp)
    80003b8c:	00813023          	sd	s0,0(sp)
    80003b90:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 18);
    80003b94:	01200593          	li	a1,18
    80003b98:	00008797          	auipc	a5,0x8
    80003b9c:	ef87b783          	ld	a5,-264(a5) # 8000ba90 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003ba0:	0007b503          	ld	a0,0(a5)
    80003ba4:	fffff097          	auipc	ra,0xfffff
    80003ba8:	4e0080e7          	jalr	1248(ra) # 80003084 <_Z10buddy_initPvm>
    printBuddyInfo(buddy);
    80003bac:	fffff097          	auipc	ra,0xfffff
    80003bb0:	630080e7          	jalr	1584(ra) # 800031dc <_Z14printBuddyInfoP14buddyAllocator>
}
    80003bb4:	00813083          	ld	ra,8(sp)
    80003bb8:	00013403          	ld	s0,0(sp)
    80003bbc:	01010113          	addi	sp,sp,16
    80003bc0:	00008067          	ret

0000000080003bc4 <_Z20buddyOnlyAllocsTest1v>:

void buddyOnlyAllocsTest1()
{
    80003bc4:	fe010113          	addi	sp,sp,-32
    80003bc8:	00113c23          	sd	ra,24(sp)
    80003bcc:	00813823          	sd	s0,16(sp)
    80003bd0:	00913423          	sd	s1,8(sp)
    80003bd4:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003bd8:	00a00593          	li	a1,10
    80003bdc:	00008797          	auipc	a5,0x8
    80003be0:	eb47b783          	ld	a5,-332(a5) # 8000ba90 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003be4:	0007b503          	ld	a0,0(a5)
    80003be8:	fffff097          	auipc	ra,0xfffff
    80003bec:	49c080e7          	jalr	1180(ra) # 80003084 <_Z10buddy_initPvm>
    80003bf0:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    80003bf4:	fffff097          	auipc	ra,0xfffff
    80003bf8:	5e8080e7          	jalr	1512(ra) # 800031dc <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003bfc:	00100593          	li	a1,1
    80003c00:	00048513          	mv	a0,s1
    80003c04:	fffff097          	auipc	ra,0xfffff
    80003c08:	270080e7          	jalr	624(ra) # 80002e74 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003c0c:	00048513          	mv	a0,s1
    80003c10:	fffff097          	auipc	ra,0xfffff
    80003c14:	5cc080e7          	jalr	1484(ra) # 800031dc <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003c18:	00100593          	li	a1,1
    80003c1c:	00048513          	mv	a0,s1
    80003c20:	fffff097          	auipc	ra,0xfffff
    80003c24:	254080e7          	jalr	596(ra) # 80002e74 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003c28:	00048513          	mv	a0,s1
    80003c2c:	fffff097          	auipc	ra,0xfffff
    80003c30:	5b0080e7          	jalr	1456(ra) # 800031dc <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003c34:	00100593          	li	a1,1
    80003c38:	00048513          	mv	a0,s1
    80003c3c:	fffff097          	auipc	ra,0xfffff
    80003c40:	238080e7          	jalr	568(ra) # 80002e74 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003c44:	00048513          	mv	a0,s1
    80003c48:	fffff097          	auipc	ra,0xfffff
    80003c4c:	594080e7          	jalr	1428(ra) # 800031dc <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,3);
    80003c50:	00300593          	li	a1,3
    80003c54:	00048513          	mv	a0,s1
    80003c58:	fffff097          	auipc	ra,0xfffff
    80003c5c:	21c080e7          	jalr	540(ra) # 80002e74 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003c60:	00048513          	mv	a0,s1
    80003c64:	fffff097          	auipc	ra,0xfffff
    80003c68:	578080e7          	jalr	1400(ra) # 800031dc <_Z14printBuddyInfoP14buddyAllocator>
}
    80003c6c:	01813083          	ld	ra,24(sp)
    80003c70:	01013403          	ld	s0,16(sp)
    80003c74:	00813483          	ld	s1,8(sp)
    80003c78:	02010113          	addi	sp,sp,32
    80003c7c:	00008067          	ret

0000000080003c80 <_Z20buddyOnlyAllocsTest2v>:

void buddyOnlyAllocsTest2()
{
    80003c80:	fe010113          	addi	sp,sp,-32
    80003c84:	00113c23          	sd	ra,24(sp)
    80003c88:	00813823          	sd	s0,16(sp)
    80003c8c:	00913423          	sd	s1,8(sp)
    80003c90:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003c94:	00a00593          	li	a1,10
    80003c98:	00008797          	auipc	a5,0x8
    80003c9c:	df87b783          	ld	a5,-520(a5) # 8000ba90 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003ca0:	0007b503          	ld	a0,0(a5)
    80003ca4:	fffff097          	auipc	ra,0xfffff
    80003ca8:	3e0080e7          	jalr	992(ra) # 80003084 <_Z10buddy_initPvm>
    80003cac:	00050493          	mv	s1,a0
    void* adr = buddy_alloc(buddy, 100);
    80003cb0:	06400593          	li	a1,100
    80003cb4:	fffff097          	auipc	ra,0xfffff
    80003cb8:	1c0080e7          	jalr	448(ra) # 80002e74 <_Z11buddy_allocP14buddyAllocatorm>
    if(adr == nullptr)
    80003cbc:	00050c63          	beqz	a0,80003cd4 <_Z20buddyOnlyAllocsTest2v+0x54>
    {
        printBuddyInfo(buddy);
    }
}
    80003cc0:	01813083          	ld	ra,24(sp)
    80003cc4:	01013403          	ld	s0,16(sp)
    80003cc8:	00813483          	ld	s1,8(sp)
    80003ccc:	02010113          	addi	sp,sp,32
    80003cd0:	00008067          	ret
        printBuddyInfo(buddy);
    80003cd4:	00048513          	mv	a0,s1
    80003cd8:	fffff097          	auipc	ra,0xfffff
    80003cdc:	504080e7          	jalr	1284(ra) # 800031dc <_Z14printBuddyInfoP14buddyAllocator>
}
    80003ce0:	fe1ff06f          	j	80003cc0 <_Z20buddyOnlyAllocsTest2v+0x40>

0000000080003ce4 <_Z19buddyAllocFreeTest1v>:

void buddyAllocFreeTest1()
{
    80003ce4:	fd010113          	addi	sp,sp,-48
    80003ce8:	02113423          	sd	ra,40(sp)
    80003cec:	02813023          	sd	s0,32(sp)
    80003cf0:	00913c23          	sd	s1,24(sp)
    80003cf4:	01213823          	sd	s2,16(sp)
    80003cf8:	01313423          	sd	s3,8(sp)
    80003cfc:	03010413          	addi	s0,sp,48
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003d00:	00a00593          	li	a1,10
    80003d04:	00008797          	auipc	a5,0x8
    80003d08:	d8c7b783          	ld	a5,-628(a5) # 8000ba90 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003d0c:	0007b503          	ld	a0,0(a5)
    80003d10:	fffff097          	auipc	ra,0xfffff
    80003d14:	374080e7          	jalr	884(ra) # 80003084 <_Z10buddy_initPvm>
    80003d18:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    80003d1c:	fffff097          	auipc	ra,0xfffff
    80003d20:	4c0080e7          	jalr	1216(ra) # 800031dc <_Z14printBuddyInfoP14buddyAllocator>
    void* adr = buddy_alloc(buddy,1);
    80003d24:	00100593          	li	a1,1
    80003d28:	00048513          	mv	a0,s1
    80003d2c:	fffff097          	auipc	ra,0xfffff
    80003d30:	148080e7          	jalr	328(ra) # 80002e74 <_Z11buddy_allocP14buddyAllocatorm>
    80003d34:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003d38:	00048513          	mv	a0,s1
    80003d3c:	fffff097          	auipc	ra,0xfffff
    80003d40:	4a0080e7          	jalr	1184(ra) # 800031dc <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003d44:	00100613          	li	a2,1
    80003d48:	00090593          	mv	a1,s2
    80003d4c:	00048513          	mv	a0,s1
    80003d50:	fffff097          	auipc	ra,0xfffff
    80003d54:	414080e7          	jalr	1044(ra) # 80003164 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003d58:	00048513          	mv	a0,s1
    80003d5c:	fffff097          	auipc	ra,0xfffff
    80003d60:	480080e7          	jalr	1152(ra) # 800031dc <_Z14printBuddyInfoP14buddyAllocator>

    adr = buddy_alloc(buddy, 2);
    80003d64:	00200593          	li	a1,2
    80003d68:	00048513          	mv	a0,s1
    80003d6c:	fffff097          	auipc	ra,0xfffff
    80003d70:	108080e7          	jalr	264(ra) # 80002e74 <_Z11buddy_allocP14buddyAllocatorm>
    80003d74:	00050913          	mv	s2,a0
    void* adr2 = buddy_alloc(buddy, 3);
    80003d78:	00300593          	li	a1,3
    80003d7c:	00048513          	mv	a0,s1
    80003d80:	fffff097          	auipc	ra,0xfffff
    80003d84:	0f4080e7          	jalr	244(ra) # 80002e74 <_Z11buddy_allocP14buddyAllocatorm>
    80003d88:	00050993          	mv	s3,a0
    printBuddyInfo(buddy);
    80003d8c:	00048513          	mv	a0,s1
    80003d90:	fffff097          	auipc	ra,0xfffff
    80003d94:	44c080e7          	jalr	1100(ra) # 800031dc <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr, 2);
    80003d98:	00200613          	li	a2,2
    80003d9c:	00090593          	mv	a1,s2
    80003da0:	00048513          	mv	a0,s1
    80003da4:	fffff097          	auipc	ra,0xfffff
    80003da8:	3c0080e7          	jalr	960(ra) # 80003164 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003dac:	00048513          	mv	a0,s1
    80003db0:	fffff097          	auipc	ra,0xfffff
    80003db4:	42c080e7          	jalr	1068(ra) # 800031dc <_Z14printBuddyInfoP14buddyAllocator>
    adr = buddy_alloc(buddy, 1);
    80003db8:	00100593          	li	a1,1
    80003dbc:	00048513          	mv	a0,s1
    80003dc0:	fffff097          	auipc	ra,0xfffff
    80003dc4:	0b4080e7          	jalr	180(ra) # 80002e74 <_Z11buddy_allocP14buddyAllocatorm>
    80003dc8:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003dcc:	00048513          	mv	a0,s1
    80003dd0:	fffff097          	auipc	ra,0xfffff
    80003dd4:	40c080e7          	jalr	1036(ra) # 800031dc <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr2, 3);
    80003dd8:	00300613          	li	a2,3
    80003ddc:	00098593          	mv	a1,s3
    80003de0:	00048513          	mv	a0,s1
    80003de4:	fffff097          	auipc	ra,0xfffff
    80003de8:	380080e7          	jalr	896(ra) # 80003164 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003dec:	00048513          	mv	a0,s1
    80003df0:	fffff097          	auipc	ra,0xfffff
    80003df4:	3ec080e7          	jalr	1004(ra) # 800031dc <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003df8:	00100613          	li	a2,1
    80003dfc:	00090593          	mv	a1,s2
    80003e00:	00048513          	mv	a0,s1
    80003e04:	fffff097          	auipc	ra,0xfffff
    80003e08:	360080e7          	jalr	864(ra) # 80003164 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003e0c:	00048513          	mv	a0,s1
    80003e10:	fffff097          	auipc	ra,0xfffff
    80003e14:	3cc080e7          	jalr	972(ra) # 800031dc <_Z14printBuddyInfoP14buddyAllocator>
}
    80003e18:	02813083          	ld	ra,40(sp)
    80003e1c:	02013403          	ld	s0,32(sp)
    80003e20:	01813483          	ld	s1,24(sp)
    80003e24:	01013903          	ld	s2,16(sp)
    80003e28:	00813983          	ld	s3,8(sp)
    80003e2c:	03010113          	addi	sp,sp,48
    80003e30:	00008067          	ret

0000000080003e34 <_Z13buddyTestMixav>:

void buddyTestMixa()
{
    80003e34:	fc010113          	addi	sp,sp,-64
    80003e38:	02113c23          	sd	ra,56(sp)
    80003e3c:	02813823          	sd	s0,48(sp)
    80003e40:	02913423          	sd	s1,40(sp)
    80003e44:	03213023          	sd	s2,32(sp)
    80003e48:	01313c23          	sd	s3,24(sp)
    80003e4c:	01413823          	sd	s4,16(sp)
    80003e50:	01513423          	sd	s5,8(sp)
    80003e54:	04010413          	addi	s0,sp,64
    size_t mask = ((size_t)-1) << 12;
    buddyAllocator* buddy = (buddyAllocator*)(((size_t)HEAP_START_ADDR & mask) + (1 << 12));
    80003e58:	00008797          	auipc	a5,0x8
    80003e5c:	c387b783          	ld	a5,-968(a5) # 8000ba90 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003e60:	0007b983          	ld	s3,0(a5)
    80003e64:	fffff7b7          	lui	a5,0xfffff
    80003e68:	00f9f9b3          	and	s3,s3,a5
    80003e6c:	000017b7          	lui	a5,0x1
    80003e70:	00f989b3          	add	s3,s3,a5
    void** x = (void**)MemoryAllocator::kmalloc(5000*sizeof(void*));
    80003e74:	0000a537          	lui	a0,0xa
    80003e78:	c4050513          	addi	a0,a0,-960 # 9c40 <_entry-0x7fff63c0>
    80003e7c:	00001097          	auipc	ra,0x1
    80003e80:	ff0080e7          	jalr	-16(ra) # 80004e6c <_ZN15MemoryAllocator7kmallocEm>
    80003e84:	00050a13          	mv	s4,a0
    printBuddyInfo(buddy);
    80003e88:	00098513          	mv	a0,s3
    80003e8c:	fffff097          	auipc	ra,0xfffff
    80003e90:	350080e7          	jalr	848(ra) # 800031dc <_Z14printBuddyInfoP14buddyAllocator>
    for(int i = 0; i < 5000;i++)
    80003e94:	00000493          	li	s1,0
    80003e98:	0080006f          	j	80003ea0 <_Z13buddyTestMixav+0x6c>
    80003e9c:	0014849b          	addiw	s1,s1,1
    80003ea0:	000017b7          	lui	a5,0x1
    80003ea4:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80003ea8:	0697c463          	blt	a5,s1,80003f10 <_Z13buddyTestMixav+0xdc>
    {
        x[i] = buddy_alloc(buddy, 2);
    80003eac:	00349913          	slli	s2,s1,0x3
    80003eb0:	012a0933          	add	s2,s4,s2
    80003eb4:	00200593          	li	a1,2
    80003eb8:	00098513          	mv	a0,s3
    80003ebc:	fffff097          	auipc	ra,0xfffff
    80003ec0:	fb8080e7          	jalr	-72(ra) # 80002e74 <_Z11buddy_allocP14buddyAllocatorm>
    80003ec4:	00a93023          	sd	a0,0(s2)
        if(x[i] == nullptr)
    80003ec8:	fc051ae3          	bnez	a0,80003e9c <_Z13buddyTestMixav+0x68>
        {
            KConsole::trapPrintStringInt("Bad allocation ", i);
    80003ecc:	00a00613          	li	a2,10
    80003ed0:	00048593          	mv	a1,s1
    80003ed4:	00005517          	auipc	a0,0x5
    80003ed8:	48c50513          	addi	a0,a0,1164 # 80009360 <CONSOLE_STATUS+0x350>
    80003edc:	00000097          	auipc	ra,0x0
    80003ee0:	9a0080e7          	jalr	-1632(ra) # 8000387c <_ZN8KConsole18trapPrintStringIntEPKcmi>
            for(int j = 0;j < i;j++)
    80003ee4:	00000913          	li	s2,0
    80003ee8:	02995463          	bge	s2,s1,80003f10 <_Z13buddyTestMixav+0xdc>
            {
                buddy_free(buddy, x[j], 2);
    80003eec:	00391793          	slli	a5,s2,0x3
    80003ef0:	00fa07b3          	add	a5,s4,a5
    80003ef4:	00200613          	li	a2,2
    80003ef8:	0007b583          	ld	a1,0(a5)
    80003efc:	00098513          	mv	a0,s3
    80003f00:	fffff097          	auipc	ra,0xfffff
    80003f04:	264080e7          	jalr	612(ra) # 80003164 <_Z10buddy_freeP14buddyAllocatorPvm>
            for(int j = 0;j < i;j++)
    80003f08:	0019091b          	addiw	s2,s2,1
    80003f0c:	fddff06f          	j	80003ee8 <_Z13buddyTestMixav+0xb4>
            }
            break;
        }
    }
    printBuddyInfo(buddy);
    80003f10:	00098513          	mv	a0,s3
    80003f14:	fffff097          	auipc	ra,0xfffff
    80003f18:	2c8080e7          	jalr	712(ra) # 800031dc <_Z14printBuddyInfoP14buddyAllocator>
}
    80003f1c:	03813083          	ld	ra,56(sp)
    80003f20:	03013403          	ld	s0,48(sp)
    80003f24:	02813483          	ld	s1,40(sp)
    80003f28:	02013903          	ld	s2,32(sp)
    80003f2c:	01813983          	ld	s3,24(sp)
    80003f30:	01013a03          	ld	s4,16(sp)
    80003f34:	00813a83          	ld	s5,8(sp)
    80003f38:	04010113          	addi	sp,sp,64
    80003f3c:	00008067          	ret

0000000080003f40 <_ZN6Thread6runnerEPv>:
    myHandle = 0;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    80003f40:	ff010113          	addi	sp,sp,-16
    80003f44:	00113423          	sd	ra,8(sp)
    80003f48:	00813023          	sd	s0,0(sp)
    80003f4c:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    80003f50:	00053783          	ld	a5,0(a0)
    80003f54:	0107b783          	ld	a5,16(a5)
    80003f58:	000780e7          	jalr	a5
}
    80003f5c:	00813083          	ld	ra,8(sp)
    80003f60:	00013403          	ld	s0,0(sp)
    80003f64:	01010113          	addi	sp,sp,16
    80003f68:	00008067          	ret

0000000080003f6c <_ZN6ThreadD1Ev>:

Thread::~Thread()
    80003f6c:	00008797          	auipc	a5,0x8
    80003f70:	abc78793          	addi	a5,a5,-1348 # 8000ba28 <_ZTV6Thread+0x10>
    80003f74:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    80003f78:	00853503          	ld	a0,8(a0)
    80003f7c:	02050663          	beqz	a0,80003fa8 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    80003f80:	ff010113          	addi	sp,sp,-16
    80003f84:	00113423          	sd	ra,8(sp)
    80003f88:	00813023          	sd	s0,0(sp)
    80003f8c:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003f90:	ffffe097          	auipc	ra,0xffffe
    80003f94:	6e4080e7          	jalr	1764(ra) # 80002674 <_ZN7_threaddlEPv>
}
    80003f98:	00813083          	ld	ra,8(sp)
    80003f9c:	00013403          	ld	s0,0(sp)
    80003fa0:	01010113          	addi	sp,sp,16
    80003fa4:	00008067          	ret
    80003fa8:	00008067          	ret

0000000080003fac <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80003fac:	00008797          	auipc	a5,0x8
    80003fb0:	aa478793          	addi	a5,a5,-1372 # 8000ba50 <_ZTV9Semaphore+0x10>
    80003fb4:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80003fb8:	00853503          	ld	a0,8(a0)
    80003fbc:	02050663          	beqz	a0,80003fe8 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80003fc0:	ff010113          	addi	sp,sp,-16
    80003fc4:	00113423          	sd	ra,8(sp)
    80003fc8:	00813023          	sd	s0,0(sp)
    80003fcc:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003fd0:	00000097          	auipc	ra,0x0
    80003fd4:	464080e7          	jalr	1124(ra) # 80004434 <_ZN4_semdlEPv>
}
    80003fd8:	00813083          	ld	ra,8(sp)
    80003fdc:	00013403          	ld	s0,0(sp)
    80003fe0:	01010113          	addi	sp,sp,16
    80003fe4:	00008067          	ret
    80003fe8:	00008067          	ret

0000000080003fec <_Znwm>:
{
    80003fec:	ff010113          	addi	sp,sp,-16
    80003ff0:	00113423          	sd	ra,8(sp)
    80003ff4:	00813023          	sd	s0,0(sp)
    80003ff8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003ffc:	ffffe097          	auipc	ra,0xffffe
    80004000:	320080e7          	jalr	800(ra) # 8000231c <_Z9mem_allocm>
}
    80004004:	00813083          	ld	ra,8(sp)
    80004008:	00013403          	ld	s0,0(sp)
    8000400c:	01010113          	addi	sp,sp,16
    80004010:	00008067          	ret

0000000080004014 <_ZdlPv>:
{
    80004014:	ff010113          	addi	sp,sp,-16
    80004018:	00113423          	sd	ra,8(sp)
    8000401c:	00813023          	sd	s0,0(sp)
    80004020:	01010413          	addi	s0,sp,16
    mem_free(p);
    80004024:	ffffe097          	auipc	ra,0xffffe
    80004028:	328080e7          	jalr	808(ra) # 8000234c <_Z8mem_freePv>
}
    8000402c:	00813083          	ld	ra,8(sp)
    80004030:	00013403          	ld	s0,0(sp)
    80004034:	01010113          	addi	sp,sp,16
    80004038:	00008067          	ret

000000008000403c <_ZN6ThreadD0Ev>:
Thread::~Thread()
    8000403c:	fe010113          	addi	sp,sp,-32
    80004040:	00113c23          	sd	ra,24(sp)
    80004044:	00813823          	sd	s0,16(sp)
    80004048:	00913423          	sd	s1,8(sp)
    8000404c:	02010413          	addi	s0,sp,32
    80004050:	00050493          	mv	s1,a0
}
    80004054:	00000097          	auipc	ra,0x0
    80004058:	f18080e7          	jalr	-232(ra) # 80003f6c <_ZN6ThreadD1Ev>
    8000405c:	00048513          	mv	a0,s1
    80004060:	00000097          	auipc	ra,0x0
    80004064:	fb4080e7          	jalr	-76(ra) # 80004014 <_ZdlPv>
    80004068:	01813083          	ld	ra,24(sp)
    8000406c:	01013403          	ld	s0,16(sp)
    80004070:	00813483          	ld	s1,8(sp)
    80004074:	02010113          	addi	sp,sp,32
    80004078:	00008067          	ret

000000008000407c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    8000407c:	fe010113          	addi	sp,sp,-32
    80004080:	00113c23          	sd	ra,24(sp)
    80004084:	00813823          	sd	s0,16(sp)
    80004088:	00913423          	sd	s1,8(sp)
    8000408c:	02010413          	addi	s0,sp,32
    80004090:	00050493          	mv	s1,a0
}
    80004094:	00000097          	auipc	ra,0x0
    80004098:	f18080e7          	jalr	-232(ra) # 80003fac <_ZN9SemaphoreD1Ev>
    8000409c:	00048513          	mv	a0,s1
    800040a0:	00000097          	auipc	ra,0x0
    800040a4:	f74080e7          	jalr	-140(ra) # 80004014 <_ZdlPv>
    800040a8:	01813083          	ld	ra,24(sp)
    800040ac:	01013403          	ld	s0,16(sp)
    800040b0:	00813483          	ld	s1,8(sp)
    800040b4:	02010113          	addi	sp,sp,32
    800040b8:	00008067          	ret

00000000800040bc <_ZN6Thread5startEv>:
    if(myHandle != 0)
    800040bc:	00853503          	ld	a0,8(a0)
    800040c0:	02050663          	beqz	a0,800040ec <_ZN6Thread5startEv+0x30>
{
    800040c4:	ff010113          	addi	sp,sp,-16
    800040c8:	00113423          	sd	ra,8(sp)
    800040cc:	00813023          	sd	s0,0(sp)
    800040d0:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    800040d4:	ffffe097          	auipc	ra,0xffffe
    800040d8:	454080e7          	jalr	1108(ra) # 80002528 <_Z12thread_startPv>
}
    800040dc:	00813083          	ld	ra,8(sp)
    800040e0:	00013403          	ld	s0,0(sp)
    800040e4:	01010113          	addi	sp,sp,16
    800040e8:	00008067          	ret
        return -1;
    800040ec:	fff00513          	li	a0,-1
}
    800040f0:	00008067          	ret

00000000800040f4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800040f4:	ff010113          	addi	sp,sp,-16
    800040f8:	00113423          	sd	ra,8(sp)
    800040fc:	00813023          	sd	s0,0(sp)
    80004100:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80004104:	ffffe097          	auipc	ra,0xffffe
    80004108:	2f4080e7          	jalr	756(ra) # 800023f8 <_Z15thread_dispatchv>
}
    8000410c:	00813083          	ld	ra,8(sp)
    80004110:	00013403          	ld	s0,0(sp)
    80004114:	01010113          	addi	sp,sp,16
    80004118:	00008067          	ret

000000008000411c <_ZN6Thread5sleepEm>:
{
    8000411c:	ff010113          	addi	sp,sp,-16
    80004120:	00113423          	sd	ra,8(sp)
    80004124:	00813023          	sd	s0,0(sp)
    80004128:	01010413          	addi	s0,sp,16
    time_sleep(time);
    8000412c:	ffffe097          	auipc	ra,0xffffe
    80004130:	3d0080e7          	jalr	976(ra) # 800024fc <_Z10time_sleepm>
}
    80004134:	00813083          	ld	ra,8(sp)
    80004138:	00013403          	ld	s0,0(sp)
    8000413c:	01010113          	addi	sp,sp,16
    80004140:	00008067          	ret

0000000080004144 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    80004144:	fe010113          	addi	sp,sp,-32
    80004148:	00113c23          	sd	ra,24(sp)
    8000414c:	00813823          	sd	s0,16(sp)
    80004150:	00913423          	sd	s1,8(sp)
    80004154:	01213023          	sd	s2,0(sp)
    80004158:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    8000415c:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    80004160:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    80004164:	0004b783          	ld	a5,0(s1)
    80004168:	0187b783          	ld	a5,24(a5)
    8000416c:	00048513          	mv	a0,s1
    80004170:	000780e7          	jalr	a5
        Thread::sleep(time);
    80004174:	00090513          	mv	a0,s2
    80004178:	00000097          	auipc	ra,0x0
    8000417c:	fa4080e7          	jalr	-92(ra) # 8000411c <_ZN6Thread5sleepEm>
    while(true)
    80004180:	fe5ff06f          	j	80004164 <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080004184 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80004184:	ff010113          	addi	sp,sp,-16
    80004188:	00113423          	sd	ra,8(sp)
    8000418c:	00813023          	sd	s0,0(sp)
    80004190:	01010413          	addi	s0,sp,16
    80004194:	00008797          	auipc	a5,0x8
    80004198:	89478793          	addi	a5,a5,-1900 # 8000ba28 <_ZTV6Thread+0x10>
    8000419c:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    800041a0:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    800041a4:	00850513          	addi	a0,a0,8
    800041a8:	ffffe097          	auipc	ra,0xffffe
    800041ac:	3ac080e7          	jalr	940(ra) # 80002554 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    800041b0:	00813083          	ld	ra,8(sp)
    800041b4:	00013403          	ld	s0,0(sp)
    800041b8:	01010113          	addi	sp,sp,16
    800041bc:	00008067          	ret

00000000800041c0 <_ZN6ThreadC1Ev>:
Thread::Thread()
    800041c0:	ff010113          	addi	sp,sp,-16
    800041c4:	00113423          	sd	ra,8(sp)
    800041c8:	00813023          	sd	s0,0(sp)
    800041cc:	01010413          	addi	s0,sp,16
    800041d0:	00008797          	auipc	a5,0x8
    800041d4:	85878793          	addi	a5,a5,-1960 # 8000ba28 <_ZTV6Thread+0x10>
    800041d8:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    800041dc:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    800041e0:	00050613          	mv	a2,a0
    800041e4:	00000597          	auipc	a1,0x0
    800041e8:	d5c58593          	addi	a1,a1,-676 # 80003f40 <_ZN6Thread6runnerEPv>
    800041ec:	00850513          	addi	a0,a0,8
    800041f0:	ffffe097          	auipc	ra,0xffffe
    800041f4:	364080e7          	jalr	868(ra) # 80002554 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    800041f8:	00813083          	ld	ra,8(sp)
    800041fc:	00013403          	ld	s0,0(sp)
    80004200:	01010113          	addi	sp,sp,16
    80004204:	00008067          	ret

0000000080004208 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80004208:	00853503          	ld	a0,8(a0)
    8000420c:	02050663          	beqz	a0,80004238 <_ZN9Semaphore4waitEv+0x30>
{
    80004210:	ff010113          	addi	sp,sp,-16
    80004214:	00113423          	sd	ra,8(sp)
    80004218:	00813023          	sd	s0,0(sp)
    8000421c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80004220:	ffffe097          	auipc	ra,0xffffe
    80004224:	284080e7          	jalr	644(ra) # 800024a4 <_Z8sem_waitP4_sem>
}
    80004228:	00813083          	ld	ra,8(sp)
    8000422c:	00013403          	ld	s0,0(sp)
    80004230:	01010113          	addi	sp,sp,16
    80004234:	00008067          	ret
        return -1;
    80004238:	fff00513          	li	a0,-1
}
    8000423c:	00008067          	ret

0000000080004240 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    80004240:	fe010113          	addi	sp,sp,-32
    80004244:	00113c23          	sd	ra,24(sp)
    80004248:	00813823          	sd	s0,16(sp)
    8000424c:	00913423          	sd	s1,8(sp)
    80004250:	02010413          	addi	s0,sp,32
    80004254:	00050493          	mv	s1,a0
    80004258:	00007797          	auipc	a5,0x7
    8000425c:	7f878793          	addi	a5,a5,2040 # 8000ba50 <_ZTV9Semaphore+0x10>
    80004260:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    80004264:	00850513          	addi	a0,a0,8
    80004268:	ffffe097          	auipc	ra,0xffffe
    8000426c:	1d8080e7          	jalr	472(ra) # 80002440 <_Z8sem_openPP4_semj>
    if(retval != 0)
    80004270:	00050463          	beqz	a0,80004278 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    80004274:	0004b423          	sd	zero,8(s1)
}
    80004278:	01813083          	ld	ra,24(sp)
    8000427c:	01013403          	ld	s0,16(sp)
    80004280:	00813483          	ld	s1,8(sp)
    80004284:	02010113          	addi	sp,sp,32
    80004288:	00008067          	ret

000000008000428c <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    8000428c:	00853503          	ld	a0,8(a0)
    80004290:	02050663          	beqz	a0,800042bc <_ZN9Semaphore6signalEv+0x30>
{
    80004294:	ff010113          	addi	sp,sp,-16
    80004298:	00113423          	sd	ra,8(sp)
    8000429c:	00813023          	sd	s0,0(sp)
    800042a0:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800042a4:	ffffe097          	auipc	ra,0xffffe
    800042a8:	22c080e7          	jalr	556(ra) # 800024d0 <_Z10sem_signalP4_sem>
}
    800042ac:	00813083          	ld	ra,8(sp)
    800042b0:	00013403          	ld	s0,0(sp)
    800042b4:	01010113          	addi	sp,sp,16
    800042b8:	00008067          	ret
        return -1;
    800042bc:	fff00513          	li	a0,-1
}
    800042c0:	00008067          	ret

00000000800042c4 <_ZN7Console4getcEv>:
{
    800042c4:	ff010113          	addi	sp,sp,-16
    800042c8:	00113423          	sd	ra,8(sp)
    800042cc:	00813023          	sd	s0,0(sp)
    800042d0:	01010413          	addi	s0,sp,16
    return ::getc();
    800042d4:	ffffe097          	auipc	ra,0xffffe
    800042d8:	300080e7          	jalr	768(ra) # 800025d4 <_Z4getcv>
}
    800042dc:	00813083          	ld	ra,8(sp)
    800042e0:	00013403          	ld	s0,0(sp)
    800042e4:	01010113          	addi	sp,sp,16
    800042e8:	00008067          	ret

00000000800042ec <_ZN7Console4putcEc>:
{
    800042ec:	ff010113          	addi	sp,sp,-16
    800042f0:	00113423          	sd	ra,8(sp)
    800042f4:	00813023          	sd	s0,0(sp)
    800042f8:	01010413          	addi	s0,sp,16
    return ::putc(c);
    800042fc:	ffffe097          	auipc	ra,0xffffe
    80004300:	300080e7          	jalr	768(ra) # 800025fc <_Z4putcc>
}
    80004304:	00813083          	ld	ra,8(sp)
    80004308:	00013403          	ld	s0,0(sp)
    8000430c:	01010113          	addi	sp,sp,16
    80004310:	00008067          	ret

0000000080004314 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80004314:	fe010113          	addi	sp,sp,-32
    80004318:	00113c23          	sd	ra,24(sp)
    8000431c:	00813823          	sd	s0,16(sp)
    80004320:	00913423          	sd	s1,8(sp)
    80004324:	01213023          	sd	s2,0(sp)
    80004328:	02010413          	addi	s0,sp,32
    8000432c:	00050493          	mv	s1,a0
    80004330:	00058913          	mv	s2,a1
    80004334:	01000513          	li	a0,16
    80004338:	00000097          	auipc	ra,0x0
    8000433c:	cb4080e7          	jalr	-844(ra) # 80003fec <_Znwm>
    80004340:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80004344:	00953023          	sd	s1,0(a0)
    80004348:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    8000434c:	00000597          	auipc	a1,0x0
    80004350:	df858593          	addi	a1,a1,-520 # 80004144 <_ZN14PeriodicThread6runnerEPv>
    80004354:	00048513          	mv	a0,s1
    80004358:	00000097          	auipc	ra,0x0
    8000435c:	e2c080e7          	jalr	-468(ra) # 80004184 <_ZN6ThreadC1EPFvPvES0_>
    80004360:	00007797          	auipc	a5,0x7
    80004364:	69878793          	addi	a5,a5,1688 # 8000b9f8 <_ZTV14PeriodicThread+0x10>
    80004368:	00f4b023          	sd	a5,0(s1)
}
    8000436c:	01813083          	ld	ra,24(sp)
    80004370:	01013403          	ld	s0,16(sp)
    80004374:	00813483          	ld	s1,8(sp)
    80004378:	00013903          	ld	s2,0(sp)
    8000437c:	02010113          	addi	sp,sp,32
    80004380:	00008067          	ret

0000000080004384 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80004384:	ff010113          	addi	sp,sp,-16
    80004388:	00813423          	sd	s0,8(sp)
    8000438c:	01010413          	addi	s0,sp,16
    80004390:	00813403          	ld	s0,8(sp)
    80004394:	01010113          	addi	sp,sp,16
    80004398:	00008067          	ret

000000008000439c <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    8000439c:	ff010113          	addi	sp,sp,-16
    800043a0:	00813423          	sd	s0,8(sp)
    800043a4:	01010413          	addi	s0,sp,16
    800043a8:	00813403          	ld	s0,8(sp)
    800043ac:	01010113          	addi	sp,sp,16
    800043b0:	00008067          	ret

00000000800043b4 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    800043b4:	ff010113          	addi	sp,sp,-16
    800043b8:	00113423          	sd	ra,8(sp)
    800043bc:	00813023          	sd	s0,0(sp)
    800043c0:	01010413          	addi	s0,sp,16
    800043c4:	00007797          	auipc	a5,0x7
    800043c8:	63478793          	addi	a5,a5,1588 # 8000b9f8 <_ZTV14PeriodicThread+0x10>
    800043cc:	00f53023          	sd	a5,0(a0)
    800043d0:	00000097          	auipc	ra,0x0
    800043d4:	b9c080e7          	jalr	-1124(ra) # 80003f6c <_ZN6ThreadD1Ev>
    800043d8:	00813083          	ld	ra,8(sp)
    800043dc:	00013403          	ld	s0,0(sp)
    800043e0:	01010113          	addi	sp,sp,16
    800043e4:	00008067          	ret

00000000800043e8 <_ZN14PeriodicThreadD0Ev>:
    800043e8:	fe010113          	addi	sp,sp,-32
    800043ec:	00113c23          	sd	ra,24(sp)
    800043f0:	00813823          	sd	s0,16(sp)
    800043f4:	00913423          	sd	s1,8(sp)
    800043f8:	02010413          	addi	s0,sp,32
    800043fc:	00050493          	mv	s1,a0
    80004400:	00007797          	auipc	a5,0x7
    80004404:	5f878793          	addi	a5,a5,1528 # 8000b9f8 <_ZTV14PeriodicThread+0x10>
    80004408:	00f53023          	sd	a5,0(a0)
    8000440c:	00000097          	auipc	ra,0x0
    80004410:	b60080e7          	jalr	-1184(ra) # 80003f6c <_ZN6ThreadD1Ev>
    80004414:	00048513          	mv	a0,s1
    80004418:	00000097          	auipc	ra,0x0
    8000441c:	bfc080e7          	jalr	-1028(ra) # 80004014 <_ZdlPv>
    80004420:	01813083          	ld	ra,24(sp)
    80004424:	01013403          	ld	s0,16(sp)
    80004428:	00813483          	ld	s1,8(sp)
    8000442c:	02010113          	addi	sp,sp,32
    80004430:	00008067          	ret

0000000080004434 <_ZN4_semdlEPv>:
//

#include "../h/_sem.hpp"
#include "../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    80004434:	ff010113          	addi	sp,sp,-16
    80004438:	00113423          	sd	ra,8(sp)
    8000443c:	00813023          	sd	s0,0(sp)
    80004440:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    80004444:	ffffe097          	auipc	ra,0xffffe
    80004448:	034080e7          	jalr	52(ra) # 80002478 <_Z9sem_closeP4_sem>
}
    8000444c:	00813083          	ld	ra,8(sp)
    80004450:	00013403          	ld	s0,0(sp)
    80004454:	01010113          	addi	sp,sp,16
    80004458:	00008067          	ret

000000008000445c <_ZN5Riscv20initMemoryAllocationEv>:
bool Riscv::kernelMainCalled = false;
kmem_cache_t * Riscv::pcbCache = nullptr;
kmem_cache_t * Riscv::semaphoreCache = nullptr;

void Riscv::initMemoryAllocation()
{
    8000445c:	ff010113          	addi	sp,sp,-16
    80004460:	00113423          	sd	ra,8(sp)
    80004464:	00813023          	sd	s0,0(sp)
    80004468:	01010413          	addi	s0,sp,16
    size_t totalNumOfBytes = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    8000446c:	00007797          	auipc	a5,0x7
    80004470:	6247b783          	ld	a5,1572(a5) # 8000ba90 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004474:	0007b503          	ld	a0,0(a5)
    80004478:	00007797          	auipc	a5,0x7
    8000447c:	6807b783          	ld	a5,1664(a5) # 8000baf8 <_GLOBAL_OFFSET_TABLE_+0x80>
    80004480:	0007b783          	ld	a5,0(a5)
    80004484:	40a787b3          	sub	a5,a5,a0
    80004488:	00178793          	addi	a5,a5,1
    size_t bytesForKernel = totalNumOfBytes / 10; //TODO change this if needed
    8000448c:	00a00713          	li	a4,10
    80004490:	02e7d7b3          	divu	a5,a5,a4
    size_t numOfBlocks = (bytesForKernel + BLOCK_NUM_OF_BYTES - 1) / BLOCK_NUM_OF_BYTES;
    80004494:	00001737          	lui	a4,0x1
    80004498:	fff70713          	addi	a4,a4,-1 # fff <_entry-0x7ffff001>
    8000449c:	00e787b3          	add	a5,a5,a4

    void* newStartAddr = (void*)((size_t)HEAP_START_ADDR + numOfBlocks*BLOCK_NUM_OF_BYTES);
    800044a0:	fffff737          	lui	a4,0xfffff
    800044a4:	00e7f7b3          	and	a5,a5,a4
    MemoryAllocator::initMemory(newStartAddr);
    800044a8:	00f50533          	add	a0,a0,a5
    800044ac:	00000097          	auipc	ra,0x0
    800044b0:	5d0080e7          	jalr	1488(ra) # 80004a7c <_ZN15MemoryAllocator10initMemoryEPv>

    //kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    //pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    //semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
}
    800044b4:	00813083          	ld	ra,8(sp)
    800044b8:	00013403          	ld	s0,0(sp)
    800044bc:	01010113          	addi	sp,sp,16
    800044c0:	00008067          	ret

00000000800044c4 <_ZN5Riscv10initSystemEv>:

void Riscv::initSystem()
{
    800044c4:	fe010113          	addi	sp,sp,-32
    800044c8:	00113c23          	sd	ra,24(sp)
    800044cc:	00813823          	sd	s0,16(sp)
    800044d0:	00913423          	sd	s1,8(sp)
    800044d4:	01213023          	sd	s2,0(sp)
    800044d8:	02010413          	addi	s0,sp,32
    w_stvec((uint64)&Riscv::supervisorTrap);
    800044dc:	00007797          	auipc	a5,0x7
    800044e0:	5c47b783          	ld	a5,1476(a5) # 8000baa0 <_GLOBAL_OFFSET_TABLE_+0x28>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    800044e4:	10579073          	csrw	stvec,a5

    size_t totalNumOfBytes = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    800044e8:	00007497          	auipc	s1,0x7
    800044ec:	5a84b483          	ld	s1,1448(s1) # 8000ba90 <_GLOBAL_OFFSET_TABLE_+0x18>
    800044f0:	0004b503          	ld	a0,0(s1)
    800044f4:	00007797          	auipc	a5,0x7
    800044f8:	6047b783          	ld	a5,1540(a5) # 8000baf8 <_GLOBAL_OFFSET_TABLE_+0x80>
    800044fc:	0007b783          	ld	a5,0(a5)
    80004500:	40a787b3          	sub	a5,a5,a0
    80004504:	00178793          	addi	a5,a5,1
    size_t bytesForKernel = totalNumOfBytes / 10; //TODO change this if needed
    80004508:	00a00713          	li	a4,10
    8000450c:	02e7d7b3          	divu	a5,a5,a4
    size_t numOfBlocks = (bytesForKernel + BLOCK_NUM_OF_BYTES - 1) / BLOCK_NUM_OF_BYTES;
    80004510:	00001737          	lui	a4,0x1
    80004514:	fff70713          	addi	a4,a4,-1 # fff <_entry-0x7ffff001>
    80004518:	00e787b3          	add	a5,a5,a4
    8000451c:	00c7d913          	srli	s2,a5,0xc
    void* newStartAddr = (void*)((size_t)HEAP_START_ADDR + numOfBlocks*BLOCK_NUM_OF_BYTES);
    80004520:	fffff737          	lui	a4,0xfffff
    80004524:	00e7f7b3          	and	a5,a5,a4
    MemoryAllocator::initMemory(newStartAddr);
    80004528:	00f50533          	add	a0,a0,a5
    8000452c:	00000097          	auipc	ra,0x0
    80004530:	550080e7          	jalr	1360(ra) # 80004a7c <_ZN15MemoryAllocator10initMemoryEPv>

    kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    80004534:	0009059b          	sext.w	a1,s2
    80004538:	0004b503          	ld	a0,0(s1)
    8000453c:	ffffd097          	auipc	ra,0xffffd
    80004540:	664080e7          	jalr	1636(ra) # 80001ba0 <_Z9kmem_initPvi>
    pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    80004544:	00000693          	li	a3,0
    80004548:	00000613          	li	a2,0
    8000454c:	06000593          	li	a1,96
    80004550:	00005517          	auipc	a0,0x5
    80004554:	e2050513          	addi	a0,a0,-480 # 80009370 <CONSOLE_STATUS+0x360>
    80004558:	ffffd097          	auipc	ra,0xffffd
    8000455c:	7b8080e7          	jalr	1976(ra) # 80001d10 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004560:	0000b497          	auipc	s1,0xb
    80004564:	68848493          	addi	s1,s1,1672 # 8000fbe8 <_ZN5Riscv8pcbCacheE>
    80004568:	00a4b023          	sd	a0,0(s1)
    semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
    8000456c:	00000693          	li	a3,0
    80004570:	00000613          	li	a2,0
    80004574:	01800593          	li	a1,24
    80004578:	00005517          	auipc	a0,0x5
    8000457c:	e0850513          	addi	a0,a0,-504 # 80009380 <CONSOLE_STATUS+0x370>
    80004580:	ffffd097          	auipc	ra,0xffffd
    80004584:	790080e7          	jalr	1936(ra) # 80001d10 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004588:	00a4b423          	sd	a0,8(s1)

    //initMemoryAllocation();
    PCB::initialize();
    8000458c:	ffffe097          	auipc	ra,0xffffe
    80004590:	2f0080e7          	jalr	752(ra) # 8000287c <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80004594:	fffff097          	auipc	ra,0xfffff
    80004598:	d64080e7          	jalr	-668(ra) # 800032f8 <_ZN8KConsole10initializeEv>

}
    8000459c:	01813083          	ld	ra,24(sp)
    800045a0:	01013403          	ld	s0,16(sp)
    800045a4:	00813483          	ld	s1,8(sp)
    800045a8:	00013903          	ld	s2,0(sp)
    800045ac:	02010113          	addi	sp,sp,32
    800045b0:	00008067          	ret

00000000800045b4 <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    800045b4:	ff010113          	addi	sp,sp,-16
    800045b8:	00813423          	sd	s0,8(sp)
    800045bc:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800045c0:	00200793          	li	a5,2
    800045c4:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    800045c8:	00813403          	ld	s0,8(sp)
    800045cc:	01010113          	addi	sp,sp,16
    800045d0:	00008067          	ret

00000000800045d4 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    800045d4:	ff010113          	addi	sp,sp,-16
    800045d8:	00813423          	sd	s0,8(sp)
    800045dc:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800045e0:	00200793          	li	a5,2
    800045e4:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    800045e8:	00813403          	ld	s0,8(sp)
    800045ec:	01010113          	addi	sp,sp,16
    800045f0:	00008067          	ret

00000000800045f4 <_ZN5Riscv9endSystemEv>:
{
    800045f4:	ff010113          	addi	sp,sp,-16
    800045f8:	00113423          	sd	ra,8(sp)
    800045fc:	00813023          	sd	s0,0(sp)
    80004600:	01010413          	addi	s0,sp,16
    disableInterrupts();
    80004604:	00000097          	auipc	ra,0x0
    80004608:	fd0080e7          	jalr	-48(ra) # 800045d4 <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    8000460c:	00100793          	li	a5,1
    80004610:	0000b717          	auipc	a4,0xb
    80004614:	5ef70423          	sb	a5,1512(a4) # 8000fbf8 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    80004618:	fffff097          	auipc	ra,0xfffff
    8000461c:	498080e7          	jalr	1176(ra) # 80003ab0 <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    80004620:	fe051ce3          	bnez	a0,80004618 <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    80004624:	00007797          	auipc	a5,0x7
    80004628:	4b47b783          	ld	a5,1204(a5) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x60>
    8000462c:	0007b503          	ld	a0,0(a5)
    80004630:	fffff097          	auipc	ra,0xfffff
    80004634:	42c080e7          	jalr	1068(ra) # 80003a5c <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    80004638:	00007797          	auipc	a5,0x7
    8000463c:	4707b783          	ld	a5,1136(a5) # 8000baa8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80004640:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    80004644:	00000097          	auipc	ra,0x0
    80004648:	f70080e7          	jalr	-144(ra) # 800045b4 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    8000464c:	00007797          	auipc	a5,0x7
    80004650:	48c7b783          	ld	a5,1164(a5) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80004654:	0007b503          	ld	a0,0(a5)
    80004658:	ffffe097          	auipc	ra,0xffffe
    8000465c:	344080e7          	jalr	836(ra) # 8000299c <_ZN3PCB10isFinishedEv>
    80004660:	00051863          	bnez	a0,80004670 <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch();
    80004664:	ffffe097          	auipc	ra,0xffffe
    80004668:	d94080e7          	jalr	-620(ra) # 800023f8 <_Z15thread_dispatchv>
    while(!PCB::consolePCB->isFinished())
    8000466c:	fe1ff06f          	j	8000464c <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    80004670:	00000097          	auipc	ra,0x0
    80004674:	f64080e7          	jalr	-156(ra) # 800045d4 <_ZN5Riscv17disableInterruptsEv>
}
    80004678:	00813083          	ld	ra,8(sp)
    8000467c:	00013403          	ld	s0,0(sp)
    80004680:	01010113          	addi	sp,sp,16
    80004684:	00008067          	ret

0000000080004688 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80004688:	ff010113          	addi	sp,sp,-16
    8000468c:	00813423          	sd	s0,8(sp)
    80004690:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80004694:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80004698:	10200073          	sret
}
    8000469c:	00813403          	ld	s0,8(sp)
    800046a0:	01010113          	addi	sp,sp,16
    800046a4:	00008067          	ret

00000000800046a8 <_ZN5Riscv10kernelMainEv>:
    }
}

void Riscv::kernelMain()
{
    if(kernelMainCalled) return;
    800046a8:	0000b797          	auipc	a5,0xb
    800046ac:	5517c783          	lbu	a5,1361(a5) # 8000fbf9 <_ZN5Riscv16kernelMainCalledE>
    800046b0:	00078463          	beqz	a5,800046b8 <_ZN5Riscv10kernelMainEv+0x10>
    800046b4:	00008067          	ret
{
    800046b8:	ff010113          	addi	sp,sp,-16
    800046bc:	00113423          	sd	ra,8(sp)
    800046c0:	00813023          	sd	s0,0(sp)
    800046c4:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    800046c8:	00100793          	li	a5,1
    800046cc:	0000b717          	auipc	a4,0xb
    800046d0:	52f706a3          	sb	a5,1325(a4) # 8000fbf9 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    800046d4:	00000097          	auipc	ra,0x0
    800046d8:	df0080e7          	jalr	-528(ra) # 800044c4 <_ZN5Riscv10initSystemEv>

    //buddyTestMixa();

    enableInterrupts();
    800046dc:	00000097          	auipc	ra,0x0
    800046e0:	ed8080e7          	jalr	-296(ra) # 800045b4 <_ZN5Riscv16enableInterruptsEv>

    while(!PCB::userPCB->isFinished())
    800046e4:	00007797          	auipc	a5,0x7
    800046e8:	3fc7b783          	ld	a5,1020(a5) # 8000bae0 <_GLOBAL_OFFSET_TABLE_+0x68>
    800046ec:	0007b503          	ld	a0,0(a5)
    800046f0:	ffffe097          	auipc	ra,0xffffe
    800046f4:	2ac080e7          	jalr	684(ra) # 8000299c <_ZN3PCB10isFinishedEv>
    800046f8:	00051863          	bnez	a0,80004708 <_ZN5Riscv10kernelMainEv+0x60>
    {
        thread_dispatch();
    800046fc:	ffffe097          	auipc	ra,0xffffe
    80004700:	cfc080e7          	jalr	-772(ra) # 800023f8 <_Z15thread_dispatchv>
    while(!PCB::userPCB->isFinished())
    80004704:	fe1ff06f          	j	800046e4 <_ZN5Riscv10kernelMainEv+0x3c>
    }

    endSystem();
    80004708:	00000097          	auipc	ra,0x0
    8000470c:	eec080e7          	jalr	-276(ra) # 800045f4 <_ZN5Riscv9endSystemEv>
}
    80004710:	00813083          	ld	ra,8(sp)
    80004714:	00013403          	ld	s0,0(sp)
    80004718:	01010113          	addi	sp,sp,16
    8000471c:	00008067          	ret

0000000080004720 <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* )
{
    80004720:	ff010113          	addi	sp,sp,-16
    80004724:	00113423          	sd	ra,8(sp)
    80004728:	00813023          	sd	s0,0(sp)
    8000472c:	01010413          	addi	s0,sp,16
    userMain();
    80004730:	00002097          	auipc	ra,0x2
    80004734:	a6c080e7          	jalr	-1428(ra) # 8000619c <_Z8userMainv>
}
    80004738:	00813083          	ld	ra,8(sp)
    8000473c:	00013403          	ld	s0,0(sp)
    80004740:	01010113          	addi	sp,sp,16
    80004744:	00008067          	ret

0000000080004748 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80004748:	ff010113          	addi	sp,sp,-16
    8000474c:	00813423          	sd	s0,8(sp)
    80004750:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80004754:	00200793          	li	a5,2
    80004758:	1047b073          	csrc	sie,a5
}
    8000475c:	00813403          	ld	s0,8(sp)
    80004760:	01010113          	addi	sp,sp,16
    80004764:	00008067          	ret

0000000080004768 <_ZN5Riscv13w_a0_sscratchEv>:

void Riscv::w_a0_sscratch()
{
    80004768:	ff010113          	addi	sp,sp,-16
    8000476c:	00813423          	sd	s0,8(sp)
    80004770:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80004774:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80004778:	00007717          	auipc	a4,0x7
    8000477c:	37873703          	ld	a4,888(a4) # 8000baf0 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004780:	00073703          	ld	a4,0(a4)
    80004784:	01073703          	ld	a4,16(a4)
    80004788:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    8000478c:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80004790:	00078593          	mv	a1,a5
}
    80004794:	00813403          	ld	s0,8(sp)
    80004798:	01010113          	addi	sp,sp,16
    8000479c:	00008067          	ret

00000000800047a0 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    800047a0:	ff010113          	addi	sp,sp,-16
    800047a4:	00813423          	sd	s0,8(sp)
    800047a8:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    800047ac:	00007797          	auipc	a5,0x7
    800047b0:	3447b783          	ld	a5,836(a5) # 8000baf0 <_GLOBAL_OFFSET_TABLE_+0x78>
    800047b4:	0007b783          	ld	a5,0(a5)
    800047b8:	0007c783          	lbu	a5,0(a5)
    800047bc:	00078c63          	beqz	a5,800047d4 <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800047c0:	10000793          	li	a5,256
    800047c4:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    800047c8:	00813403          	ld	s0,8(sp)
    800047cc:	01010113          	addi	sp,sp,16
    800047d0:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800047d4:	10000793          	li	a5,256
    800047d8:	1007b073          	csrc	sstatus,a5
    800047dc:	fedff06f          	j	800047c8 <_ZN5Riscv14changePrivModeEv+0x28>

00000000800047e0 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    800047e0:	f9010113          	addi	sp,sp,-112
    800047e4:	06113423          	sd	ra,104(sp)
    800047e8:	06813023          	sd	s0,96(sp)
    800047ec:	04913c23          	sd	s1,88(sp)
    800047f0:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    800047f4:	00070713          	mv	a4,a4
    800047f8:	00007797          	auipc	a5,0x7
    800047fc:	3187b783          	ld	a5,792(a5) # 8000bb10 <_GLOBAL_OFFSET_TABLE_+0x98>
    80004800:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80004804:	00007797          	auipc	a5,0x7
    80004808:	2ec7b783          	ld	a5,748(a5) # 8000baf0 <_GLOBAL_OFFSET_TABLE_+0x78>
    8000480c:	0007b783          	ld	a5,0(a5)
    80004810:	14002773          	csrr	a4,sscratch
    80004814:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80004818:	142027f3          	csrr	a5,scause
    8000481c:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80004820:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80004824:	00900713          	li	a4,9
    80004828:	02f76e63          	bltu	a4,a5,80004864 <_ZN5Riscv20handleSupervisorTrapEv+0x84>
    8000482c:	00800713          	li	a4,8
    80004830:	12e7f463          	bgeu	a5,a4,80004958 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    80004834:	00500713          	li	a4,5
    80004838:	10e78a63          	beq	a5,a4,8000494c <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    8000483c:	00700713          	li	a4,7
    80004840:	00e79863          	bne	a5,a4,80004850 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            PCB::threadExitHandler();
    80004844:	ffffe097          	auipc	ra,0xffffe
    80004848:	17c080e7          	jalr	380(ra) # 800029c0 <_ZN3PCB17threadExitHandlerEv>
            break;
    8000484c:	0dc0006f          	j	80004928 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    80004850:	00200713          	li	a4,2
    80004854:	0ce79a63          	bne	a5,a4,80004928 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            PCB::threadExitHandler();
    80004858:	ffffe097          	auipc	ra,0xffffe
    8000485c:	168080e7          	jalr	360(ra) # 800029c0 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004860:	0c80006f          	j	80004928 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    80004864:	fff00713          	li	a4,-1
    80004868:	03f71713          	slli	a4,a4,0x3f
    8000486c:	00170713          	addi	a4,a4,1
    80004870:	02e78863          	beq	a5,a4,800048a0 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
    80004874:	fff00713          	li	a4,-1
    80004878:	03f71713          	slli	a4,a4,0x3f
    8000487c:	00970713          	addi	a4,a4,9
    80004880:	0ae79463          	bne	a5,a4,80004928 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            KConsole::getCharactersFromConsole();
    80004884:	fffff097          	auipc	ra,0xfffff
    80004888:	b8c080e7          	jalr	-1140(ra) # 80003410 <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    8000488c:	00002097          	auipc	ra,0x2
    80004890:	4b8080e7          	jalr	1208(ra) # 80006d44 <plic_claim>
    80004894:	00002097          	auipc	ra,0x2
    80004898:	4e8080e7          	jalr	1256(ra) # 80006d7c <plic_complete>
            break;
    8000489c:	08c0006f          	j	80004928 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800048a0:	141027f3          	csrr	a5,sepc
    800048a4:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800048a8:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    800048ac:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800048b0:	100027f3          	csrr	a5,sstatus
    800048b4:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800048b8:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    800048bc:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    800048c0:	00200793          	li	a5,2
    800048c4:	1447b073          	csrc	sip,a5
            totalTime++;
    800048c8:	0000b717          	auipc	a4,0xb
    800048cc:	32070713          	addi	a4,a4,800 # 8000fbe8 <_ZN5Riscv8pcbCacheE>
    800048d0:	01873783          	ld	a5,24(a4)
    800048d4:	00178793          	addi	a5,a5,1
    800048d8:	00f73c23          	sd	a5,24(a4)
            PCB::timeSliceCounter++;
    800048dc:	00007497          	auipc	s1,0x7
    800048e0:	1dc4b483          	ld	s1,476(s1) # 8000bab8 <_GLOBAL_OFFSET_TABLE_+0x40>
    800048e4:	0004b783          	ld	a5,0(s1)
    800048e8:	00178793          	addi	a5,a5,1
    800048ec:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    800048f0:	fffff097          	auipc	ra,0xfffff
    800048f4:	05c080e7          	jalr	92(ra) # 8000394c <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    800048f8:	00007797          	auipc	a5,0x7
    800048fc:	1f87b783          	ld	a5,504(a5) # 8000baf0 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004900:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80004904:	0187b783          	ld	a5,24(a5)
    80004908:	0004b703          	ld	a4,0(s1)
    8000490c:	02f77863          	bgeu	a4,a5,8000493c <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
            Riscv::w_sstatus(sstatus);
    80004910:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80004914:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80004918:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    8000491c:	14179073          	csrw	sepc,a5
            changePrivMode();
    80004920:	00000097          	auipc	ra,0x0
    80004924:	e80080e7          	jalr	-384(ra) # 800047a0 <_ZN5Riscv14changePrivModeEv>
}
    80004928:	06813083          	ld	ra,104(sp)
    8000492c:	06013403          	ld	s0,96(sp)
    80004930:	05813483          	ld	s1,88(sp)
    80004934:	07010113          	addi	sp,sp,112
    80004938:	00008067          	ret
                PCB::timeSliceCounter = 0;
    8000493c:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80004940:	ffffe097          	auipc	ra,0xffffe
    80004944:	e18080e7          	jalr	-488(ra) # 80002758 <_ZN3PCB8dispatchEv>
    80004948:	fc9ff06f          	j	80004910 <_ZN5Riscv20handleSupervisorTrapEv+0x130>
            PCB::threadExitHandler();
    8000494c:	ffffe097          	auipc	ra,0xffffe
    80004950:	074080e7          	jalr	116(ra) # 800029c0 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004954:	fd5ff06f          	j	80004928 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80004958:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000495c:	14102773          	csrr	a4,sepc
    80004960:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80004964:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80004968:	00470713          	addi	a4,a4,4
    8000496c:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80004970:	10002773          	csrr	a4,sstatus
    80004974:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80004978:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    8000497c:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80004980:	04300713          	li	a4,67
    80004984:	02f76463          	bltu	a4,a5,800049ac <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    80004988:	00279793          	slli	a5,a5,0x2
    8000498c:	00005717          	auipc	a4,0x5
    80004990:	a0870713          	addi	a4,a4,-1528 # 80009394 <CONSOLE_STATUS+0x384>
    80004994:	00e787b3          	add	a5,a5,a4
    80004998:	0007a783          	lw	a5,0(a5)
    8000499c:	00e787b3          	add	a5,a5,a4
    800049a0:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    800049a4:	00000097          	auipc	ra,0x0
    800049a8:	4f0080e7          	jalr	1264(ra) # 80004e94 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    800049ac:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800049b0:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    800049b4:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800049b8:	14179073          	csrw	sepc,a5
            changePrivMode();
    800049bc:	00000097          	auipc	ra,0x0
    800049c0:	de4080e7          	jalr	-540(ra) # 800047a0 <_ZN5Riscv14changePrivModeEv>
}
    800049c4:	f65ff06f          	j	80004928 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                    MemoryAllocator::memFreeHandler();
    800049c8:	00000097          	auipc	ra,0x0
    800049cc:	530080e7          	jalr	1328(ra) # 80004ef8 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    800049d0:	fddff06f          	j	800049ac <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadMakePCBHandler();
    800049d4:	ffffe097          	auipc	ra,0xffffe
    800049d8:	1b0080e7          	jalr	432(ra) # 80002b84 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    800049dc:	fd1ff06f          	j	800049ac <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadCreateHandler();
    800049e0:	ffffe097          	auipc	ra,0xffffe
    800049e4:	0c0080e7          	jalr	192(ra) # 80002aa0 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    800049e8:	fc5ff06f          	j	800049ac <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadStartHandler();
    800049ec:	ffffe097          	auipc	ra,0xffffe
    800049f0:	154080e7          	jalr	340(ra) # 80002b40 <_ZN3PCB18threadStartHandlerEv>
                    break;
    800049f4:	fb9ff06f          	j	800049ac <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadDispatchHandler();
    800049f8:	ffffe097          	auipc	ra,0xffffe
    800049fc:	014080e7          	jalr	20(ra) # 80002a0c <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80004a00:	fadff06f          	j	800049ac <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadExitHandler();
    80004a04:	ffffe097          	auipc	ra,0xffffe
    80004a08:	fbc080e7          	jalr	-68(ra) # 800029c0 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80004a0c:	fa1ff06f          	j	800049ac <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadSleepHandler();
    80004a10:	ffffe097          	auipc	ra,0xffffe
    80004a14:	02c080e7          	jalr	44(ra) # 80002a3c <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80004a18:	f95ff06f          	j	800049ac <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                     PCB::threadDelPCBHandler();
    80004a1c:	ffffe097          	auipc	ra,0xffffe
    80004a20:	1fc080e7          	jalr	508(ra) # 80002c18 <_ZN3PCB19threadDelPCBHandlerEv>
                     break;
    80004a24:	f89ff06f          	j	800049ac <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semOpenHandler();
    80004a28:	00001097          	auipc	ra,0x1
    80004a2c:	92c080e7          	jalr	-1748(ra) # 80005354 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80004a30:	f7dff06f          	j	800049ac <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semWaitHandler();
    80004a34:	00001097          	auipc	ra,0x1
    80004a38:	9d0080e7          	jalr	-1584(ra) # 80005404 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80004a3c:	f71ff06f          	j	800049ac <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semSignalHandler();
    80004a40:	00001097          	auipc	ra,0x1
    80004a44:	a18080e7          	jalr	-1512(ra) # 80005458 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80004a48:	f65ff06f          	j	800049ac <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semCloseHandler();
    80004a4c:	00001097          	auipc	ra,0x1
    80004a50:	a50080e7          	jalr	-1456(ra) # 8000549c <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80004a54:	f59ff06f          	j	800049ac <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getcHandler();
    80004a58:	fffff097          	auipc	ra,0xfffff
    80004a5c:	bbc080e7          	jalr	-1092(ra) # 80003614 <_ZN8KConsole11getcHandlerEv>
                    break;
    80004a60:	f4dff06f          	j	800049ac <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::putcHandler();
    80004a64:	fffff097          	auipc	ra,0xfffff
    80004a68:	b80080e7          	jalr	-1152(ra) # 800035e4 <_ZN8KConsole11putcHandlerEv>
                    break;
    80004a6c:	f41ff06f          	j	800049ac <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getCharHandler();
    80004a70:	fffff097          	auipc	ra,0xfffff
    80004a74:	d00080e7          	jalr	-768(ra) # 80003770 <_ZN8KConsole14getCharHandlerEv>
                    break;
    80004a78:	f35ff06f          	j	800049ac <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>

0000000080004a7c <_ZN15MemoryAllocator10initMemoryEPv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory(void* startAddr)
{
    80004a7c:	ff010113          	addi	sp,sp,-16
    80004a80:	00813423          	sd	s0,8(sp)
    80004a84:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80004a88:	0000b717          	auipc	a4,0xb
    80004a8c:	18072703          	lw	a4,384(a4) # 8000fc08 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004a90:	00100793          	li	a5,1
    80004a94:	02f70c63          	beq	a4,a5,80004acc <_ZN15MemoryAllocator10initMemoryEPv+0x50>
        return;
    memoryInitiliaized = 1;
    80004a98:	0000b797          	auipc	a5,0xb
    80004a9c:	17078793          	addi	a5,a5,368 # 8000fc08 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004aa0:	00100713          	li	a4,1
    80004aa4:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80004aa8:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)startAddr;
    80004aac:	00a7b823          	sd	a0,16(a5)
    headFree->next = 0;
    80004ab0:	00053423          	sd	zero,8(a0)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)startAddr  + 1 - sizeof(BlockHeader));
    80004ab4:	00007797          	auipc	a5,0x7
    80004ab8:	0447b783          	ld	a5,68(a5) # 8000baf8 <_GLOBAL_OFFSET_TABLE_+0x80>
    80004abc:	0007b783          	ld	a5,0(a5)
    80004ac0:	40a787b3          	sub	a5,a5,a0
    80004ac4:	ff178793          	addi	a5,a5,-15
    80004ac8:	00f53023          	sd	a5,0(a0)
}
    80004acc:	00813403          	ld	s0,8(sp)
    80004ad0:	01010113          	addi	sp,sp,16
    80004ad4:	00008067          	ret

0000000080004ad8 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    80004ad8:	ff010113          	addi	sp,sp,-16
    80004adc:	00813423          	sd	s0,8(sp)
    80004ae0:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004ae4:	0000b797          	auipc	a5,0xb
    80004ae8:	1247a783          	lw	a5,292(a5) # 8000fc08 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004aec:	02078a63          	beqz	a5,80004b20 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        return;
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004af0:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    80004af4:	00b53023          	sd	a1,0(a0)
    if(headAllocated == 0)
    80004af8:	0000b797          	auipc	a5,0xb
    80004afc:	1187b783          	ld	a5,280(a5) # 8000fc10 <_ZN15MemoryAllocator13headAllocatedE>
    80004b00:	02078663          	beqz	a5,80004b2c <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x54>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    80004b04:	00007717          	auipc	a4,0x7
    80004b08:	ff473703          	ld	a4,-12(a4) # 8000baf8 <_GLOBAL_OFFSET_TABLE_+0x80>
    80004b0c:	00073703          	ld	a4,0(a4)
    80004b10:	02c76463          	bltu	a4,a2,80004b38 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    80004b14:	00863783          	ld	a5,8(a2)
    80004b18:	00f53423          	sd	a5,8(a0)
        allFrag->next = newAllocated;
    80004b1c:	00a63423          	sd	a0,8(a2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    80004b20:	00813403          	ld	s0,8(sp)
    80004b24:	01010113          	addi	sp,sp,16
    80004b28:	00008067          	ret
        headAllocated = newAllocated;
    80004b2c:	0000b797          	auipc	a5,0xb
    80004b30:	0ea7b223          	sd	a0,228(a5) # 8000fc10 <_ZN15MemoryAllocator13headAllocatedE>
    80004b34:	fedff06f          	j	80004b20 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        newAllocated->next = headAllocated;
    80004b38:	00f53423          	sd	a5,8(a0)
        headAllocated = newAllocated;
    80004b3c:	0000b797          	auipc	a5,0xb
    80004b40:	0ca7ba23          	sd	a0,212(a5) # 8000fc10 <_ZN15MemoryAllocator13headAllocatedE>
    80004b44:	fddff06f          	j	80004b20 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>

0000000080004b48 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80004b48:	ff010113          	addi	sp,sp,-16
    80004b4c:	00813423          	sd	s0,8(sp)
    80004b50:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004b54:	0000b797          	auipc	a5,0xb
    80004b58:	0b47a783          	lw	a5,180(a5) # 8000fc08 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004b5c:	02078c63          	beqz	a5,80004b94 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80004b60:	0000b797          	auipc	a5,0xb
    80004b64:	0b07b783          	ld	a5,176(a5) # 8000fc10 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004b68:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    80004b6c:	00b53023          	sd	a1,0(a0)
    BlockHeader* prev = 0;
    80004b70:	00000713          	li	a4,0
    while(curr != 0)
    80004b74:	00078c63          	beqz	a5,80004b8c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80004b78:	00f56863          	bltu	a0,a5,80004b88 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x40>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004b7c:	00078713          	mv	a4,a5
        curr = curr->next;
    80004b80:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004b84:	ff1ff06f          	j	80004b74 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x2c>
            newAllocated->next = curr;
    80004b88:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    80004b8c:	00070a63          	beqz	a4,80004ba0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x58>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80004b90:	00a73423          	sd	a0,8(a4)
}
    80004b94:	00813403          	ld	s0,8(sp)
    80004b98:	01010113          	addi	sp,sp,16
    80004b9c:	00008067          	ret
        headAllocated = newAllocated;
    80004ba0:	0000b797          	auipc	a5,0xb
    80004ba4:	06a7b823          	sd	a0,112(a5) # 8000fc10 <_ZN15MemoryAllocator13headAllocatedE>
    80004ba8:	fedff06f          	j	80004b94 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>

0000000080004bac <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    80004bac:	0000b797          	auipc	a5,0xb
    80004bb0:	05c7a783          	lw	a5,92(a5) # 8000fc08 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004bb4:	0e078e63          	beqz	a5,80004cb0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x104>
{
    80004bb8:	fe010113          	addi	sp,sp,-32
    80004bbc:	00113c23          	sd	ra,24(sp)
    80004bc0:	00813823          	sd	s0,16(sp)
    80004bc4:	00913423          	sd	s1,8(sp)
    80004bc8:	02010413          	addi	s0,sp,32
    80004bcc:	00050593          	mv	a1,a0
        return nullptr;
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004bd0:	0000b497          	auipc	s1,0xb
    80004bd4:	0484b483          	ld	s1,72(s1) # 8000fc18 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80004bd8:	00000713          	li	a4,0
    while(curr != 0)
    80004bdc:	0a048e63          	beqz	s1,80004c98 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xec>
    {
        if(curr->size >= size)
    80004be0:	0004b783          	ld	a5,0(s1)
    80004be4:	00b7f863          	bgeu	a5,a1,80004bf4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80004be8:	00048713          	mv	a4,s1
        curr = curr->next;
    80004bec:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004bf0:	fedff06f          	j	80004bdc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80004bf4:	01058693          	addi	a3,a1,16
    80004bf8:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    80004bfc:	01078613          	addi	a2,a5,16
    80004c00:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    80004c04:	00007517          	auipc	a0,0x7
    80004c08:	ef453503          	ld	a0,-268(a0) # 8000baf8 <_GLOBAL_OFFSET_TABLE_+0x80>
    80004c0c:	00053503          	ld	a0,0(a0)
    80004c10:	06d56063          	bltu	a0,a3,80004c70 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    80004c14:	40b78533          	sub	a0,a5,a1
                if(size2 > sizeof(BlockHeader))
    80004c18:	01000813          	li	a6,16
    80004c1c:	02a87663          	bgeu	a6,a0,80004c48 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    80004c20:	0084b783          	ld	a5,8(s1)
    80004c24:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80004c28:	ff050513          	addi	a0,a0,-16
    80004c2c:	00a6b023          	sd	a0,0(a3)
                    if (prev != 0)
    80004c30:	00070663          	beqz	a4,80004c3c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    80004c34:	00d73423          	sd	a3,8(a4)
    80004c38:	0400006f          	j	80004c78 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    80004c3c:	0000b797          	auipc	a5,0xb
    80004c40:	fcd7be23          	sd	a3,-36(a5) # 8000fc18 <_ZN15MemoryAllocator8headFreeE>
    80004c44:	0340006f          	j	80004c78 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    80004c48:	00070a63          	beqz	a4,80004c5c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    80004c4c:	0084b683          	ld	a3,8(s1)
    80004c50:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    80004c54:	00078593          	mv	a1,a5
    80004c58:	0200006f          	j	80004c78 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    80004c5c:	0084b703          	ld	a4,8(s1)
    80004c60:	0000b697          	auipc	a3,0xb
    80004c64:	fae6bc23          	sd	a4,-72(a3) # 8000fc18 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    80004c68:	00078593          	mv	a1,a5
    80004c6c:	00c0006f          	j	80004c78 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80004c70:	00070e63          	beqz	a4,80004c8c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
                    prev->next = 0;
    80004c74:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    80004c78:	00048513          	mv	a0,s1
    80004c7c:	00000097          	auipc	ra,0x0
    80004c80:	e5c080e7          	jalr	-420(ra) # 80004ad8 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80004c84:	01048513          	addi	a0,s1,16
            break;
    80004c88:	0140006f          	j	80004c9c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
                    headFree = 0;
    80004c8c:	0000b797          	auipc	a5,0xb
    80004c90:	f807b623          	sd	zero,-116(a5) # 8000fc18 <_ZN15MemoryAllocator8headFreeE>
    80004c94:	fe5ff06f          	j	80004c78 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    80004c98:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004c9c:	01813083          	ld	ra,24(sp)
    80004ca0:	01013403          	ld	s0,16(sp)
    80004ca4:	00813483          	ld	s1,8(sp)
    80004ca8:	02010113          	addi	sp,sp,32
    80004cac:	00008067          	ret
        return nullptr;
    80004cb0:	00000513          	li	a0,0
}
    80004cb4:	00008067          	ret

0000000080004cb8 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80004cb8:	ff010113          	addi	sp,sp,-16
    80004cbc:	00113423          	sd	ra,8(sp)
    80004cc0:	00813023          	sd	s0,0(sp)
    80004cc4:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80004cc8:	00000097          	auipc	ra,0x0
    80004ccc:	ee4080e7          	jalr	-284(ra) # 80004bac <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004cd0:	00813083          	ld	ra,8(sp)
    80004cd4:	00013403          	ld	s0,0(sp)
    80004cd8:	01010113          	addi	sp,sp,16
    80004cdc:	00008067          	ret

0000000080004ce0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80004ce0:	ff010113          	addi	sp,sp,-16
    80004ce4:	00813423          	sd	s0,8(sp)
    80004ce8:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004cec:	0000b797          	auipc	a5,0xb
    80004cf0:	f1c7a783          	lw	a5,-228(a5) # 8000fc08 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004cf4:	06078263          	beqz	a5,80004d58 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004cf8:	0000b797          	auipc	a5,0xb
    80004cfc:	f207b783          	ld	a5,-224(a5) # 8000fc18 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80004d00:	00b53023          	sd	a1,0(a0)
    newSegment->next = 0;
    80004d04:	00053423          	sd	zero,8(a0)
    BlockHeader* prev = 0;
    80004d08:	00000713          	li	a4,0
    while(curr != 0)
    80004d0c:	00078c63          	beqz	a5,80004d24 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80004d10:	00f56863          	bltu	a0,a5,80004d20 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x40>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80004d14:	00078713          	mv	a4,a5
        curr = curr->next;
    80004d18:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004d1c:	ff1ff06f          	j	80004d0c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x2c>
            newSegment->next = curr;
    80004d20:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    80004d24:	04070063          	beqz	a4,80004d64 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x84>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80004d28:	00a73423          	sd	a0,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80004d2c:	00853783          	ld	a5,8(a0)
    80004d30:	00078a63          	beqz	a5,80004d44 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
    80004d34:	00053603          	ld	a2,0(a0)
    80004d38:	01060693          	addi	a3,a2,16
    80004d3c:	00d506b3          	add	a3,a0,a3
    80004d40:	02d78863          	beq	a5,a3,80004d70 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x90>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80004d44:	00070a63          	beqz	a4,80004d58 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
    80004d48:	00073683          	ld	a3,0(a4)
    80004d4c:	01068793          	addi	a5,a3,16
    80004d50:	00f707b3          	add	a5,a4,a5
    80004d54:	02a78c63          	beq	a5,a0,80004d8c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80004d58:	00813403          	ld	s0,8(sp)
    80004d5c:	01010113          	addi	sp,sp,16
    80004d60:	00008067          	ret
        headFree = newSegment;
    80004d64:	0000b797          	auipc	a5,0xb
    80004d68:	eaa7ba23          	sd	a0,-332(a5) # 8000fc18 <_ZN15MemoryAllocator8headFreeE>
    80004d6c:	fc1ff06f          	j	80004d2c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x4c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004d70:	0007b683          	ld	a3,0(a5)
    80004d74:	00d60633          	add	a2,a2,a3
    80004d78:	01060613          	addi	a2,a2,16
    80004d7c:	00c53023          	sd	a2,0(a0)
        newSegment->next = newSegment->next->next;
    80004d80:	0087b783          	ld	a5,8(a5)
    80004d84:	00f53423          	sd	a5,8(a0)
    80004d88:	fbdff06f          	j	80004d44 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80004d8c:	00053783          	ld	a5,0(a0)
    80004d90:	00f686b3          	add	a3,a3,a5
    80004d94:	01068693          	addi	a3,a3,16
    80004d98:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004d9c:	00853783          	ld	a5,8(a0)
    80004da0:	00f73423          	sd	a5,8(a4)
    80004da4:	fb5ff06f          	j	80004d58 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>

0000000080004da8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    80004da8:	0000b797          	auipc	a5,0xb
    80004dac:	e607a783          	lw	a5,-416(a5) # 8000fc08 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004db0:	08078263          	beqz	a5,80004e34 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>
{
    80004db4:	fe010113          	addi	sp,sp,-32
    80004db8:	00113c23          	sd	ra,24(sp)
    80004dbc:	00813823          	sd	s0,16(sp)
    80004dc0:	00913423          	sd	s1,8(sp)
    80004dc4:	02010413          	addi	s0,sp,32
        return 1;
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80004dc8:	0000b497          	auipc	s1,0xb
    80004dcc:	e484b483          	ld	s1,-440(s1) # 8000fc10 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80004dd0:	00000713          	li	a4,0
    while(curr != 0)
    80004dd4:	02048a63          	beqz	s1,80004e08 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x60>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80004dd8:	01048793          	addi	a5,s1,16
    80004ddc:	00a78863          	beq	a5,a0,80004dec <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80004de0:	00048713          	mv	a4,s1
        curr = curr->next;
    80004de4:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004de8:	fedff06f          	j	80004dd4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x2c>
            if(prev != 0)
    80004dec:	02070c63          	beqz	a4,80004e24 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x7c>
                prev->next = curr->next;
    80004df0:	0084b783          	ld	a5,8(s1)
    80004df4:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80004df8:	0004b583          	ld	a1,0(s1)
    80004dfc:	00048513          	mv	a0,s1
    80004e00:	00000097          	auipc	ra,0x0
    80004e04:	ee0080e7          	jalr	-288(ra) # 80004ce0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004e08:	02048a63          	beqz	s1,80004e3c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004e0c:	00000513          	li	a0,0
    else
        return 1;
}
    80004e10:	01813083          	ld	ra,24(sp)
    80004e14:	01013403          	ld	s0,16(sp)
    80004e18:	00813483          	ld	s1,8(sp)
    80004e1c:	02010113          	addi	sp,sp,32
    80004e20:	00008067          	ret
                headAllocated = curr->next;
    80004e24:	0084b783          	ld	a5,8(s1)
    80004e28:	0000b717          	auipc	a4,0xb
    80004e2c:	def73423          	sd	a5,-536(a4) # 8000fc10 <_ZN15MemoryAllocator13headAllocatedE>
    80004e30:	fc9ff06f          	j	80004df8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x50>
        return 1;
    80004e34:	00100513          	li	a0,1
}
    80004e38:	00008067          	ret
        return 1;
    80004e3c:	00100513          	li	a0,1
    80004e40:	fd1ff06f          	j	80004e10 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x68>

0000000080004e44 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004e44:	ff010113          	addi	sp,sp,-16
    80004e48:	00113423          	sd	ra,8(sp)
    80004e4c:	00813023          	sd	s0,0(sp)
    80004e50:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004e54:	00000097          	auipc	ra,0x0
    80004e58:	f54080e7          	jalr	-172(ra) # 80004da8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004e5c:	00813083          	ld	ra,8(sp)
    80004e60:	00013403          	ld	s0,0(sp)
    80004e64:	01010113          	addi	sp,sp,16
    80004e68:	00008067          	ret

0000000080004e6c <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80004e6c:	ff010113          	addi	sp,sp,-16
    80004e70:	00113423          	sd	ra,8(sp)
    80004e74:	00813023          	sd	s0,0(sp)
    80004e78:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004e7c:	00000097          	auipc	ra,0x0
    80004e80:	e3c080e7          	jalr	-452(ra) # 80004cb8 <_ZN15MemoryAllocator9mem_allocEm>
}
    80004e84:	00813083          	ld	ra,8(sp)
    80004e88:	00013403          	ld	s0,0(sp)
    80004e8c:	01010113          	addi	sp,sp,16
    80004e90:	00008067          	ret

0000000080004e94 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004e94:	ff010113          	addi	sp,sp,-16
    80004e98:	00113423          	sd	ra,8(sp)
    80004e9c:	00813023          	sd	s0,0(sp)
    80004ea0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004ea4:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004ea8:	00651513          	slli	a0,a0,0x6
    80004eac:	00000097          	auipc	ra,0x0
    80004eb0:	fc0080e7          	jalr	-64(ra) # 80004e6c <_ZN15MemoryAllocator7kmallocEm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004eb4:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004eb8:	00000097          	auipc	ra,0x0
    80004ebc:	8b0080e7          	jalr	-1872(ra) # 80004768 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004ec0:	00813083          	ld	ra,8(sp)
    80004ec4:	00013403          	ld	s0,0(sp)
    80004ec8:	01010113          	addi	sp,sp,16
    80004ecc:	00008067          	ret

0000000080004ed0 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    80004ed0:	ff010113          	addi	sp,sp,-16
    80004ed4:	00113423          	sd	ra,8(sp)
    80004ed8:	00813023          	sd	s0,0(sp)
    80004edc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80004ee0:	00000097          	auipc	ra,0x0
    80004ee4:	f64080e7          	jalr	-156(ra) # 80004e44 <_ZN15MemoryAllocator8mem_freeEPv>
    80004ee8:	00813083          	ld	ra,8(sp)
    80004eec:	00013403          	ld	s0,0(sp)
    80004ef0:	01010113          	addi	sp,sp,16
    80004ef4:	00008067          	ret

0000000080004ef8 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004ef8:	ff010113          	addi	sp,sp,-16
    80004efc:	00113423          	sd	ra,8(sp)
    80004f00:	00813023          	sd	s0,0(sp)
    80004f04:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004f08:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004f0c:	00000097          	auipc	ra,0x0
    80004f10:	fc4080e7          	jalr	-60(ra) # 80004ed0 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004f14:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004f18:	00000097          	auipc	ra,0x0
    80004f1c:	850080e7          	jalr	-1968(ra) # 80004768 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004f20:	00813083          	ld	ra,8(sp)
    80004f24:	00013403          	ld	s0,0(sp)
    80004f28:	01010113          	addi	sp,sp,16
    80004f2c:	00008067          	ret

0000000080004f30 <_Z12slabInitTestv>:
#include "../h/slabTests.hpp"

void slabInitTest()
{
    80004f30:	ff010113          	addi	sp,sp,-16
    80004f34:	00113423          	sd	ra,8(sp)
    80004f38:	00813023          	sd	s0,0(sp)
    80004f3c:	01010413          	addi	s0,sp,16
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004f40:	00f00593          	li	a1,15
    80004f44:	00007797          	auipc	a5,0x7
    80004f48:	b4c7b783          	ld	a5,-1204(a5) # 8000ba90 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004f4c:	0007b503          	ld	a0,0(a5)
    80004f50:	ffffd097          	auipc	ra,0xffffd
    80004f54:	c50080e7          	jalr	-944(ra) # 80001ba0 <_Z9kmem_initPvi>
}
    80004f58:	00813083          	ld	ra,8(sp)
    80004f5c:	00013403          	ld	s0,0(sp)
    80004f60:	01010113          	addi	sp,sp,16
    80004f64:	00008067          	ret

0000000080004f68 <_Z19slabCacheCreateTestv>:

void slabCacheCreateTest()
{
    80004f68:	fe010113          	addi	sp,sp,-32
    80004f6c:	00113c23          	sd	ra,24(sp)
    80004f70:	00813823          	sd	s0,16(sp)
    80004f74:	00913423          	sd	s1,8(sp)
    80004f78:	01213023          	sd	s2,0(sp)
    80004f7c:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004f80:	00f00593          	li	a1,15
    80004f84:	00007797          	auipc	a5,0x7
    80004f88:	b0c7b783          	ld	a5,-1268(a5) # 8000ba90 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004f8c:	0007b503          	ld	a0,0(a5)
    80004f90:	ffffd097          	auipc	ra,0xffffd
    80004f94:	c10080e7          	jalr	-1008(ra) # 80001ba0 <_Z9kmem_initPvi>
    kmem_cache_t* cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004f98:	00000693          	li	a3,0
    80004f9c:	00000613          	li	a2,0
    80004fa0:	00a00593          	li	a1,10
    80004fa4:	00004517          	auipc	a0,0x4
    80004fa8:	50450513          	addi	a0,a0,1284 # 800094a8 <CONSOLE_STATUS+0x498>
    80004fac:	ffffd097          	auipc	ra,0xffffd
    80004fb0:	d64080e7          	jalr	-668(ra) # 80001d10 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004fb4:	00050493          	mv	s1,a0
    kmem_cache_t* cache2 = kmem_cache_create("Cache test 2", 10, nullptr,nullptr);
    80004fb8:	00000693          	li	a3,0
    80004fbc:	00000613          	li	a2,0
    80004fc0:	00a00593          	li	a1,10
    80004fc4:	00004517          	auipc	a0,0x4
    80004fc8:	4f450513          	addi	a0,a0,1268 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80004fcc:	ffffd097          	auipc	ra,0xffffd
    80004fd0:	d44080e7          	jalr	-700(ra) # 80001d10 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004fd4:	00050913          	mv	s2,a0
    kmem_cache_t* cache3 = kmem_cache_create("Cache test 3", 10, nullptr,nullptr);
    80004fd8:	00000693          	li	a3,0
    80004fdc:	00000613          	li	a2,0
    80004fe0:	00a00593          	li	a1,10
    80004fe4:	00004517          	auipc	a0,0x4
    80004fe8:	4e450513          	addi	a0,a0,1252 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80004fec:	ffffd097          	auipc	ra,0xffffd
    80004ff0:	d24080e7          	jalr	-732(ra) # 80001d10 <_Z17kmem_cache_createPKcmPFvPvES3_>
    if(cache && cache2 && cache3)
    80004ff4:	00048a63          	beqz	s1,80005008 <_Z19slabCacheCreateTestv+0xa0>
    80004ff8:	00090863          	beqz	s2,80005008 <_Z19slabCacheCreateTestv+0xa0>
    80004ffc:	00050663          	beqz	a0,80005008 <_Z19slabCacheCreateTestv+0xa0>
        printSlabAllocatorInfo();
    80005000:	ffffd097          	auipc	ra,0xffffd
    80005004:	f7c080e7          	jalr	-132(ra) # 80001f7c <_Z22printSlabAllocatorInfov>
}
    80005008:	01813083          	ld	ra,24(sp)
    8000500c:	01013403          	ld	s0,16(sp)
    80005010:	00813483          	ld	s1,8(sp)
    80005014:	00013903          	ld	s2,0(sp)
    80005018:	02010113          	addi	sp,sp,32
    8000501c:	00008067          	ret

0000000080005020 <_Z20slabCacheCreateTest2v>:

void slabCacheCreateTest2()
{
    80005020:	fe010113          	addi	sp,sp,-32
    80005024:	00113c23          	sd	ra,24(sp)
    80005028:	00813823          	sd	s0,16(sp)
    8000502c:	00913423          	sd	s1,8(sp)
    80005030:	01213023          	sd	s2,0(sp)
    80005034:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80005038:	00f00593          	li	a1,15
    8000503c:	00007797          	auipc	a5,0x7
    80005040:	a547b783          	ld	a5,-1452(a5) # 8000ba90 <_GLOBAL_OFFSET_TABLE_+0x18>
    80005044:	0007b503          	ld	a0,0(a5)
    80005048:	ffffd097          	auipc	ra,0xffffd
    8000504c:	b58080e7          	jalr	-1192(ra) # 80001ba0 <_Z9kmem_initPvi>
    kmem_cache_t * cache = nullptr;
    for(int i = 1;i<=68;i++)
    80005050:	00100493          	li	s1,1
    kmem_cache_t * cache = nullptr;
    80005054:	00000913          	li	s2,0
    for(int i = 1;i<=68;i++)
    80005058:	04400793          	li	a5,68
    8000505c:	0297c663          	blt	a5,s1,80005088 <_Z20slabCacheCreateTest2v+0x68>
    {
        cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80005060:	00000693          	li	a3,0
    80005064:	00000613          	li	a2,0
    80005068:	00a00593          	li	a1,10
    8000506c:	00004517          	auipc	a0,0x4
    80005070:	43c50513          	addi	a0,a0,1084 # 800094a8 <CONSOLE_STATUS+0x498>
    80005074:	ffffd097          	auipc	ra,0xffffd
    80005078:	c9c080e7          	jalr	-868(ra) # 80001d10 <_Z17kmem_cache_createPKcmPFvPvES3_>
    8000507c:	00050913          	mv	s2,a0
    for(int i = 1;i<=68;i++)
    80005080:	0014849b          	addiw	s1,s1,1
    80005084:	fd5ff06f          	j	80005058 <_Z20slabCacheCreateTest2v+0x38>
    }
    printSlabAllocatorInfo();
    80005088:	ffffd097          	auipc	ra,0xffffd
    8000508c:	ef4080e7          	jalr	-268(ra) # 80001f7c <_Z22printSlabAllocatorInfov>
    kmem_cache_destroy(cache);
    80005090:	00090513          	mv	a0,s2
    80005094:	ffffd097          	auipc	ra,0xffffd
    80005098:	14c080e7          	jalr	332(ra) # 800021e0 <_Z18kmem_cache_destroyP12kmem_cache_s>
    printSlabAllocatorInfo();
    8000509c:	ffffd097          	auipc	ra,0xffffd
    800050a0:	ee0080e7          	jalr	-288(ra) # 80001f7c <_Z22printSlabAllocatorInfov>
    800050a4:	01813083          	ld	ra,24(sp)
    800050a8:	01013403          	ld	s0,16(sp)
    800050ac:	00813483          	ld	s1,8(sp)
    800050b0:	00013903          	ld	s2,0(sp)
    800050b4:	02010113          	addi	sp,sp,32
    800050b8:	00008067          	ret

00000000800050bc <_ZN10KSemaphoreC1Ei>:
#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    800050bc:	ff010113          	addi	sp,sp,-16
    800050c0:	00813423          	sd	s0,8(sp)
    800050c4:	01010413          	addi	s0,sp,16
{
    this->val = val;
    800050c8:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    800050cc:	00053423          	sd	zero,8(a0)
    800050d0:	00053023          	sd	zero,0(a0)
}
    800050d4:	00813403          	ld	s0,8(sp)
    800050d8:	01010113          	addi	sp,sp,16
    800050dc:	00008067          	ret

00000000800050e0 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    800050e0:	ff010113          	addi	sp,sp,-16
    800050e4:	00813423          	sd	s0,8(sp)
    800050e8:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    800050ec:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    800050f0:	00053783          	ld	a5,0(a0)
    800050f4:	00078e63          	beqz	a5,80005110 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    800050f8:	00853783          	ld	a5,8(a0)
    800050fc:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80005100:	00b53423          	sd	a1,8(a0)
    }
}
    80005104:	00813403          	ld	s0,8(sp)
    80005108:	01010113          	addi	sp,sp,16
    8000510c:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80005110:	00b53423          	sd	a1,8(a0)
    80005114:	00b53023          	sd	a1,0(a0)
    80005118:	fedff06f          	j	80005104 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

000000008000511c <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    8000511c:	ff010113          	addi	sp,sp,-16
    80005120:	00113423          	sd	ra,8(sp)
    80005124:	00813023          	sd	s0,0(sp)
    80005128:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    8000512c:	00007797          	auipc	a5,0x7
    80005130:	9c47b783          	ld	a5,-1596(a5) # 8000baf0 <_GLOBAL_OFFSET_TABLE_+0x78>
    80005134:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80005138:	00200793          	li	a5,2
    8000513c:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    80005140:	00000097          	auipc	ra,0x0
    80005144:	fa0080e7          	jalr	-96(ra) # 800050e0 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80005148:	ffffd097          	auipc	ra,0xffffd
    8000514c:	610080e7          	jalr	1552(ra) # 80002758 <_ZN3PCB8dispatchEv>
}
    80005150:	00813083          	ld	ra,8(sp)
    80005154:	00013403          	ld	s0,0(sp)
    80005158:	01010113          	addi	sp,sp,16
    8000515c:	00008067          	ret

0000000080005160 <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    80005160:	00007797          	auipc	a5,0x7
    80005164:	9907b783          	ld	a5,-1648(a5) # 8000baf0 <_GLOBAL_OFFSET_TABLE_+0x78>
    80005168:	0007b783          	ld	a5,0(a5)
    8000516c:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    80005170:	01052783          	lw	a5,16(a0)
    80005174:	fff7879b          	addiw	a5,a5,-1
    80005178:	00f52823          	sw	a5,16(a0)
    8000517c:	02079713          	slli	a4,a5,0x20
    80005180:	00074663          	bltz	a4,8000518c <_ZN10KSemaphore4waitEv+0x2c>
}
    80005184:	00000513          	li	a0,0
    80005188:	00008067          	ret
{
    8000518c:	ff010113          	addi	sp,sp,-16
    80005190:	00113423          	sd	ra,8(sp)
    80005194:	00813023          	sd	s0,0(sp)
    80005198:	01010413          	addi	s0,sp,16
        block();
    8000519c:	00000097          	auipc	ra,0x0
    800051a0:	f80080e7          	jalr	-128(ra) # 8000511c <_ZN10KSemaphore5blockEv>
}
    800051a4:	00000513          	li	a0,0
    800051a8:	00813083          	ld	ra,8(sp)
    800051ac:	00013403          	ld	s0,0(sp)
    800051b0:	01010113          	addi	sp,sp,16
    800051b4:	00008067          	ret

00000000800051b8 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    800051b8:	ff010113          	addi	sp,sp,-16
    800051bc:	00813423          	sd	s0,8(sp)
    800051c0:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    800051c4:	00053503          	ld	a0,0(a0)
    800051c8:	00813403          	ld	s0,8(sp)
    800051cc:	01010113          	addi	sp,sp,16
    800051d0:	00008067          	ret

00000000800051d4 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    800051d4:	ff010113          	addi	sp,sp,-16
    800051d8:	00813423          	sd	s0,8(sp)
    800051dc:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    800051e0:	00053783          	ld	a5,0(a0)
    800051e4:	00078c63          	beqz	a5,800051fc <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    800051e8:	0087b703          	ld	a4,8(a5)
    800051ec:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    800051f0:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    800051f4:	00053783          	ld	a5,0(a0)
    800051f8:	00078863          	beqz	a5,80005208 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    800051fc:	00813403          	ld	s0,8(sp)
    80005200:	01010113          	addi	sp,sp,16
    80005204:	00008067          	ret
        tailBlocked =0;
    80005208:	00053423          	sd	zero,8(a0)
    8000520c:	ff1ff06f          	j	800051fc <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080005210 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80005210:	fe010113          	addi	sp,sp,-32
    80005214:	00113c23          	sd	ra,24(sp)
    80005218:	00813823          	sd	s0,16(sp)
    8000521c:	00913423          	sd	s1,8(sp)
    80005220:	01213023          	sd	s2,0(sp)
    80005224:	02010413          	addi	s0,sp,32
    80005228:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    8000522c:	00090513          	mv	a0,s2
    80005230:	00000097          	auipc	ra,0x0
    80005234:	f88080e7          	jalr	-120(ra) # 800051b8 <_ZN10KSemaphore15getFirstBlockedEv>
    80005238:	00050493          	mv	s1,a0
    8000523c:	02050463          	beqz	a0,80005264 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    80005240:	00090513          	mv	a0,s2
    80005244:	00000097          	auipc	ra,0x0
    80005248:	f90080e7          	jalr	-112(ra) # 800051d4 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    8000524c:	00100793          	li	a5,1
    80005250:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    80005254:	00048513          	mv	a0,s1
    80005258:	fffff097          	auipc	ra,0xfffff
    8000525c:	804080e7          	jalr	-2044(ra) # 80003a5c <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80005260:	fcdff06f          	j	8000522c <_ZN10KSemaphoreD1Ev+0x1c>
}
    80005264:	01813083          	ld	ra,24(sp)
    80005268:	01013403          	ld	s0,16(sp)
    8000526c:	00813483          	ld	s1,8(sp)
    80005270:	00013903          	ld	s2,0(sp)
    80005274:	02010113          	addi	sp,sp,32
    80005278:	00008067          	ret

000000008000527c <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    8000527c:	fe010113          	addi	sp,sp,-32
    80005280:	00113c23          	sd	ra,24(sp)
    80005284:	00813823          	sd	s0,16(sp)
    80005288:	00913423          	sd	s1,8(sp)
    8000528c:	01213023          	sd	s2,0(sp)
    80005290:	02010413          	addi	s0,sp,32
    80005294:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80005298:	00000097          	auipc	ra,0x0
    8000529c:	f20080e7          	jalr	-224(ra) # 800051b8 <_ZN10KSemaphore15getFirstBlockedEv>
    800052a0:	00050493          	mv	s1,a0
    removeFirstBlocked();
    800052a4:	00090513          	mv	a0,s2
    800052a8:	00000097          	auipc	ra,0x0
    800052ac:	f2c080e7          	jalr	-212(ra) # 800051d4 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    800052b0:	00048863          	beqz	s1,800052c0 <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    800052b4:	00048513          	mv	a0,s1
    800052b8:	ffffe097          	auipc	ra,0xffffe
    800052bc:	7a4080e7          	jalr	1956(ra) # 80003a5c <_ZN9Scheduler3putEP3PCB>
    }
}
    800052c0:	01813083          	ld	ra,24(sp)
    800052c4:	01013403          	ld	s0,16(sp)
    800052c8:	00813483          	ld	s1,8(sp)
    800052cc:	00013903          	ld	s2,0(sp)
    800052d0:	02010113          	addi	sp,sp,32
    800052d4:	00008067          	ret

00000000800052d8 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    800052d8:	01052783          	lw	a5,16(a0)
    800052dc:	0017879b          	addiw	a5,a5,1
    800052e0:	0007871b          	sext.w	a4,a5
    800052e4:	00f52823          	sw	a5,16(a0)
    800052e8:	00e05663          	blez	a4,800052f4 <_ZN10KSemaphore6signalEv+0x1c>
}
    800052ec:	00000513          	li	a0,0
    800052f0:	00008067          	ret
uint64 KSemaphore::signal() {
    800052f4:	ff010113          	addi	sp,sp,-16
    800052f8:	00113423          	sd	ra,8(sp)
    800052fc:	00813023          	sd	s0,0(sp)
    80005300:	01010413          	addi	s0,sp,16
        unblock();
    80005304:	00000097          	auipc	ra,0x0
    80005308:	f78080e7          	jalr	-136(ra) # 8000527c <_ZN10KSemaphore7unblockEv>
}
    8000530c:	00000513          	li	a0,0
    80005310:	00813083          	ld	ra,8(sp)
    80005314:	00013403          	ld	s0,0(sp)
    80005318:	01010113          	addi	sp,sp,16
    8000531c:	00008067          	ret

0000000080005320 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    80005320:	ff010113          	addi	sp,sp,-16
    80005324:	00113423          	sd	ra,8(sp)
    80005328:	00813023          	sd	s0,0(sp)
    8000532c:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::semaphoreCache);
    80005330:	00006797          	auipc	a5,0x6
    80005334:	7687b783          	ld	a5,1896(a5) # 8000ba98 <_GLOBAL_OFFSET_TABLE_+0x20>
    80005338:	0007b503          	ld	a0,0(a5)
    8000533c:	ffffd097          	auipc	ra,0xffffd
    80005340:	89c080e7          	jalr	-1892(ra) # 80001bd8 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    80005344:	00813083          	ld	ra,8(sp)
    80005348:	00013403          	ld	s0,0(sp)
    8000534c:	01010113          	addi	sp,sp,16
    80005350:	00008067          	ret

0000000080005354 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    80005354:	fd010113          	addi	sp,sp,-48
    80005358:	02113423          	sd	ra,40(sp)
    8000535c:	02813023          	sd	s0,32(sp)
    80005360:	00913c23          	sd	s1,24(sp)
    80005364:	01213823          	sd	s2,16(sp)
    80005368:	01313423          	sd	s3,8(sp)
    8000536c:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80005370:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    80005374:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    80005378:	01800513          	li	a0,24
    8000537c:	00000097          	auipc	ra,0x0
    80005380:	fa4080e7          	jalr	-92(ra) # 80005320 <_ZN10KSemaphorenwEm>
    80005384:	00050493          	mv	s1,a0
    80005388:	0009859b          	sext.w	a1,s3
    8000538c:	00000097          	auipc	ra,0x0
    80005390:	d30080e7          	jalr	-720(ra) # 800050bc <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    80005394:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    80005398:	02048663          	beqz	s1,800053c4 <_ZN10KSemaphore14semOpenHandlerEv+0x70>
            __asm__ volatile("li a0, 0");
    8000539c:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800053a0:	fffff097          	auipc	ra,0xfffff
    800053a4:	3c8080e7          	jalr	968(ra) # 80004768 <_ZN5Riscv13w_a0_sscratchEv>
}
    800053a8:	02813083          	ld	ra,40(sp)
    800053ac:	02013403          	ld	s0,32(sp)
    800053b0:	01813483          	ld	s1,24(sp)
    800053b4:	01013903          	ld	s2,16(sp)
    800053b8:	00813983          	ld	s3,8(sp)
    800053bc:	03010113          	addi	sp,sp,48
    800053c0:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    800053c4:	fff00513          	li	a0,-1
    800053c8:	fd9ff06f          	j	800053a0 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

00000000800053cc <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    800053cc:	ff010113          	addi	sp,sp,-16
    800053d0:	00113423          	sd	ra,8(sp)
    800053d4:	00813023          	sd	s0,0(sp)
    800053d8:	01010413          	addi	s0,sp,16
    800053dc:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::semaphoreCache, p);
    800053e0:	00006797          	auipc	a5,0x6
    800053e4:	6b87b783          	ld	a5,1720(a5) # 8000ba98 <_GLOBAL_OFFSET_TABLE_+0x20>
    800053e8:	0007b503          	ld	a0,0(a5)
    800053ec:	ffffd097          	auipc	ra,0xffffd
    800053f0:	9c8080e7          	jalr	-1592(ra) # 80001db4 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    800053f4:	00813083          	ld	ra,8(sp)
    800053f8:	00013403          	ld	s0,0(sp)
    800053fc:	01010113          	addi	sp,sp,16
    80005400:	00008067          	ret

0000000080005404 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80005404:	ff010113          	addi	sp,sp,-16
    80005408:	00113423          	sd	ra,8(sp)
    8000540c:	00813023          	sd	s0,0(sp)
    80005410:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80005414:	00058513          	mv	a0,a1
    kSem->wait();
    80005418:	00000097          	auipc	ra,0x0
    8000541c:	d48080e7          	jalr	-696(ra) # 80005160 <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    80005420:	00006797          	auipc	a5,0x6
    80005424:	6d07b783          	ld	a5,1744(a5) # 8000baf0 <_GLOBAL_OFFSET_TABLE_+0x78>
    80005428:	0007b783          	ld	a5,0(a5)
    8000542c:	0587c783          	lbu	a5,88(a5)
    80005430:	02078063          	beqz	a5,80005450 <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    80005434:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    80005438:	fffff097          	auipc	ra,0xfffff
    8000543c:	330080e7          	jalr	816(ra) # 80004768 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005440:	00813083          	ld	ra,8(sp)
    80005444:	00013403          	ld	s0,0(sp)
    80005448:	01010113          	addi	sp,sp,16
    8000544c:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80005450:	00000513          	li	a0,0
    80005454:	fe5ff06f          	j	80005438 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

0000000080005458 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    80005458:	ff010113          	addi	sp,sp,-16
    8000545c:	00113423          	sd	ra,8(sp)
    80005460:	00813023          	sd	s0,0(sp)
    80005464:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80005468:	00058513          	mv	a0,a1
    if (kSem == 0)
    8000546c:	02050463          	beqz	a0,80005494 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    80005470:	00000097          	auipc	ra,0x0
    80005474:	e68080e7          	jalr	-408(ra) # 800052d8 <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    80005478:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    8000547c:	fffff097          	auipc	ra,0xfffff
    80005480:	2ec080e7          	jalr	748(ra) # 80004768 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005484:	00813083          	ld	ra,8(sp)
    80005488:	00013403          	ld	s0,0(sp)
    8000548c:	01010113          	addi	sp,sp,16
    80005490:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80005494:	00100513          	li	a0,1
    80005498:	fe5ff06f          	j	8000547c <_ZN10KSemaphore16semSignalHandlerEv+0x24>

000000008000549c <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    8000549c:	fe010113          	addi	sp,sp,-32
    800054a0:	00113c23          	sd	ra,24(sp)
    800054a4:	00813823          	sd	s0,16(sp)
    800054a8:	00913423          	sd	s1,8(sp)
    800054ac:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800054b0:	00058493          	mv	s1,a1
    delete kSem;
    800054b4:	00048e63          	beqz	s1,800054d0 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    800054b8:	00048513          	mv	a0,s1
    800054bc:	00000097          	auipc	ra,0x0
    800054c0:	d54080e7          	jalr	-684(ra) # 80005210 <_ZN10KSemaphoreD1Ev>
    800054c4:	00048513          	mv	a0,s1
    800054c8:	00000097          	auipc	ra,0x0
    800054cc:	f04080e7          	jalr	-252(ra) # 800053cc <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    800054d0:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800054d4:	fffff097          	auipc	ra,0xfffff
    800054d8:	294080e7          	jalr	660(ra) # 80004768 <_ZN5Riscv13w_a0_sscratchEv>
}
    800054dc:	01813083          	ld	ra,24(sp)
    800054e0:	01013403          	ld	s0,16(sp)
    800054e4:	00813483          	ld	s1,8(sp)
    800054e8:	02010113          	addi	sp,sp,32
    800054ec:	00008067          	ret

00000000800054f0 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800054f0:	fe010113          	addi	sp,sp,-32
    800054f4:	00113c23          	sd	ra,24(sp)
    800054f8:	00813823          	sd	s0,16(sp)
    800054fc:	00913423          	sd	s1,8(sp)
    80005500:	02010413          	addi	s0,sp,32
    80005504:	00050493          	mv	s1,a0
    LOCK();
    80005508:	00100613          	li	a2,1
    8000550c:	00000593          	li	a1,0
    80005510:	0000a517          	auipc	a0,0xa
    80005514:	71050513          	addi	a0,a0,1808 # 8000fc20 <lockPrint>
    80005518:	ffffc097          	auipc	ra,0xffffc
    8000551c:	d00080e7          	jalr	-768(ra) # 80001218 <copy_and_swap>
    80005520:	fe0514e3          	bnez	a0,80005508 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005524:	0004c503          	lbu	a0,0(s1)
    80005528:	00050a63          	beqz	a0,8000553c <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    8000552c:	ffffd097          	auipc	ra,0xffffd
    80005530:	0d0080e7          	jalr	208(ra) # 800025fc <_Z4putcc>
        string++;
    80005534:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005538:	fedff06f          	j	80005524 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    8000553c:	00000613          	li	a2,0
    80005540:	00100593          	li	a1,1
    80005544:	0000a517          	auipc	a0,0xa
    80005548:	6dc50513          	addi	a0,a0,1756 # 8000fc20 <lockPrint>
    8000554c:	ffffc097          	auipc	ra,0xffffc
    80005550:	ccc080e7          	jalr	-820(ra) # 80001218 <copy_and_swap>
    80005554:	fe0514e3          	bnez	a0,8000553c <_Z11printStringPKc+0x4c>
}
    80005558:	01813083          	ld	ra,24(sp)
    8000555c:	01013403          	ld	s0,16(sp)
    80005560:	00813483          	ld	s1,8(sp)
    80005564:	02010113          	addi	sp,sp,32
    80005568:	00008067          	ret

000000008000556c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000556c:	fd010113          	addi	sp,sp,-48
    80005570:	02113423          	sd	ra,40(sp)
    80005574:	02813023          	sd	s0,32(sp)
    80005578:	00913c23          	sd	s1,24(sp)
    8000557c:	01213823          	sd	s2,16(sp)
    80005580:	01313423          	sd	s3,8(sp)
    80005584:	01413023          	sd	s4,0(sp)
    80005588:	03010413          	addi	s0,sp,48
    8000558c:	00050993          	mv	s3,a0
    80005590:	00058a13          	mv	s4,a1
    LOCK();
    80005594:	00100613          	li	a2,1
    80005598:	00000593          	li	a1,0
    8000559c:	0000a517          	auipc	a0,0xa
    800055a0:	68450513          	addi	a0,a0,1668 # 8000fc20 <lockPrint>
    800055a4:	ffffc097          	auipc	ra,0xffffc
    800055a8:	c74080e7          	jalr	-908(ra) # 80001218 <copy_and_swap>
    800055ac:	fe0514e3          	bnez	a0,80005594 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800055b0:	00000913          	li	s2,0
    800055b4:	00090493          	mv	s1,s2
    800055b8:	0019091b          	addiw	s2,s2,1
    800055bc:	03495a63          	bge	s2,s4,800055f0 <_Z9getStringPci+0x84>
        cc = getc();
    800055c0:	ffffd097          	auipc	ra,0xffffd
    800055c4:	014080e7          	jalr	20(ra) # 800025d4 <_Z4getcv>
        if(cc < 1)
    800055c8:	02050463          	beqz	a0,800055f0 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    800055cc:	009984b3          	add	s1,s3,s1
    800055d0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800055d4:	00a00793          	li	a5,10
    800055d8:	00f50a63          	beq	a0,a5,800055ec <_Z9getStringPci+0x80>
    800055dc:	00d00793          	li	a5,13
    800055e0:	fcf51ae3          	bne	a0,a5,800055b4 <_Z9getStringPci+0x48>
        buf[i++] = c;
    800055e4:	00090493          	mv	s1,s2
    800055e8:	0080006f          	j	800055f0 <_Z9getStringPci+0x84>
    800055ec:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800055f0:	009984b3          	add	s1,s3,s1
    800055f4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800055f8:	00000613          	li	a2,0
    800055fc:	00100593          	li	a1,1
    80005600:	0000a517          	auipc	a0,0xa
    80005604:	62050513          	addi	a0,a0,1568 # 8000fc20 <lockPrint>
    80005608:	ffffc097          	auipc	ra,0xffffc
    8000560c:	c10080e7          	jalr	-1008(ra) # 80001218 <copy_and_swap>
    80005610:	fe0514e3          	bnez	a0,800055f8 <_Z9getStringPci+0x8c>
    return buf;
}
    80005614:	00098513          	mv	a0,s3
    80005618:	02813083          	ld	ra,40(sp)
    8000561c:	02013403          	ld	s0,32(sp)
    80005620:	01813483          	ld	s1,24(sp)
    80005624:	01013903          	ld	s2,16(sp)
    80005628:	00813983          	ld	s3,8(sp)
    8000562c:	00013a03          	ld	s4,0(sp)
    80005630:	03010113          	addi	sp,sp,48
    80005634:	00008067          	ret

0000000080005638 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005638:	ff010113          	addi	sp,sp,-16
    8000563c:	00813423          	sd	s0,8(sp)
    80005640:	01010413          	addi	s0,sp,16
    80005644:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005648:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000564c:	0006c603          	lbu	a2,0(a3)
    80005650:	fd06071b          	addiw	a4,a2,-48
    80005654:	0ff77713          	andi	a4,a4,255
    80005658:	00900793          	li	a5,9
    8000565c:	02e7e063          	bltu	a5,a4,8000567c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005660:	0025179b          	slliw	a5,a0,0x2
    80005664:	00a787bb          	addw	a5,a5,a0
    80005668:	0017979b          	slliw	a5,a5,0x1
    8000566c:	00168693          	addi	a3,a3,1
    80005670:	00c787bb          	addw	a5,a5,a2
    80005674:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005678:	fd5ff06f          	j	8000564c <_Z11stringToIntPKc+0x14>
    return n;
}
    8000567c:	00813403          	ld	s0,8(sp)
    80005680:	01010113          	addi	sp,sp,16
    80005684:	00008067          	ret

0000000080005688 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005688:	fc010113          	addi	sp,sp,-64
    8000568c:	02113c23          	sd	ra,56(sp)
    80005690:	02813823          	sd	s0,48(sp)
    80005694:	02913423          	sd	s1,40(sp)
    80005698:	03213023          	sd	s2,32(sp)
    8000569c:	01313c23          	sd	s3,24(sp)
    800056a0:	04010413          	addi	s0,sp,64
    800056a4:	00050493          	mv	s1,a0
    800056a8:	00058913          	mv	s2,a1
    800056ac:	00060993          	mv	s3,a2
    LOCK();
    800056b0:	00100613          	li	a2,1
    800056b4:	00000593          	li	a1,0
    800056b8:	0000a517          	auipc	a0,0xa
    800056bc:	56850513          	addi	a0,a0,1384 # 8000fc20 <lockPrint>
    800056c0:	ffffc097          	auipc	ra,0xffffc
    800056c4:	b58080e7          	jalr	-1192(ra) # 80001218 <copy_and_swap>
    800056c8:	fe0514e3          	bnez	a0,800056b0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800056cc:	00098463          	beqz	s3,800056d4 <_Z8printIntiii+0x4c>
    800056d0:	0804c463          	bltz	s1,80005758 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800056d4:	0004851b          	sext.w	a0,s1
    neg = 0;
    800056d8:	00000593          	li	a1,0
    }

    i = 0;
    800056dc:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800056e0:	0009079b          	sext.w	a5,s2
    800056e4:	0325773b          	remuw	a4,a0,s2
    800056e8:	00048613          	mv	a2,s1
    800056ec:	0014849b          	addiw	s1,s1,1
    800056f0:	02071693          	slli	a3,a4,0x20
    800056f4:	0206d693          	srli	a3,a3,0x20
    800056f8:	00006717          	auipc	a4,0x6
    800056fc:	36870713          	addi	a4,a4,872 # 8000ba60 <digits>
    80005700:	00d70733          	add	a4,a4,a3
    80005704:	00074683          	lbu	a3,0(a4)
    80005708:	fd040713          	addi	a4,s0,-48
    8000570c:	00c70733          	add	a4,a4,a2
    80005710:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005714:	0005071b          	sext.w	a4,a0
    80005718:	0325553b          	divuw	a0,a0,s2
    8000571c:	fcf772e3          	bgeu	a4,a5,800056e0 <_Z8printIntiii+0x58>
    if(neg)
    80005720:	00058c63          	beqz	a1,80005738 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005724:	fd040793          	addi	a5,s0,-48
    80005728:	009784b3          	add	s1,a5,s1
    8000572c:	02d00793          	li	a5,45
    80005730:	fef48823          	sb	a5,-16(s1)
    80005734:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005738:	fff4849b          	addiw	s1,s1,-1
    8000573c:	0204c463          	bltz	s1,80005764 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005740:	fd040793          	addi	a5,s0,-48
    80005744:	009787b3          	add	a5,a5,s1
    80005748:	ff07c503          	lbu	a0,-16(a5)
    8000574c:	ffffd097          	auipc	ra,0xffffd
    80005750:	eb0080e7          	jalr	-336(ra) # 800025fc <_Z4putcc>
    80005754:	fe5ff06f          	j	80005738 <_Z8printIntiii+0xb0>
        x = -xx;
    80005758:	4090053b          	negw	a0,s1
        neg = 1;
    8000575c:	00100593          	li	a1,1
        x = -xx;
    80005760:	f7dff06f          	j	800056dc <_Z8printIntiii+0x54>

    UNLOCK();
    80005764:	00000613          	li	a2,0
    80005768:	00100593          	li	a1,1
    8000576c:	0000a517          	auipc	a0,0xa
    80005770:	4b450513          	addi	a0,a0,1204 # 8000fc20 <lockPrint>
    80005774:	ffffc097          	auipc	ra,0xffffc
    80005778:	aa4080e7          	jalr	-1372(ra) # 80001218 <copy_and_swap>
    8000577c:	fe0514e3          	bnez	a0,80005764 <_Z8printIntiii+0xdc>
}
    80005780:	03813083          	ld	ra,56(sp)
    80005784:	03013403          	ld	s0,48(sp)
    80005788:	02813483          	ld	s1,40(sp)
    8000578c:	02013903          	ld	s2,32(sp)
    80005790:	01813983          	ld	s3,24(sp)
    80005794:	04010113          	addi	sp,sp,64
    80005798:	00008067          	ret

000000008000579c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000579c:	fd010113          	addi	sp,sp,-48
    800057a0:	02113423          	sd	ra,40(sp)
    800057a4:	02813023          	sd	s0,32(sp)
    800057a8:	00913c23          	sd	s1,24(sp)
    800057ac:	01213823          	sd	s2,16(sp)
    800057b0:	01313423          	sd	s3,8(sp)
    800057b4:	03010413          	addi	s0,sp,48
    800057b8:	00050493          	mv	s1,a0
    800057bc:	00058913          	mv	s2,a1
    800057c0:	0015879b          	addiw	a5,a1,1
    800057c4:	0007851b          	sext.w	a0,a5
    800057c8:	00f4a023          	sw	a5,0(s1)
    800057cc:	0004a823          	sw	zero,16(s1)
    800057d0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800057d4:	00251513          	slli	a0,a0,0x2
    800057d8:	ffffd097          	auipc	ra,0xffffd
    800057dc:	b44080e7          	jalr	-1212(ra) # 8000231c <_Z9mem_allocm>
    800057e0:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800057e4:	01000513          	li	a0,16
    800057e8:	fffff097          	auipc	ra,0xfffff
    800057ec:	804080e7          	jalr	-2044(ra) # 80003fec <_Znwm>
    800057f0:	00050993          	mv	s3,a0
    800057f4:	00000593          	li	a1,0
    800057f8:	fffff097          	auipc	ra,0xfffff
    800057fc:	a48080e7          	jalr	-1464(ra) # 80004240 <_ZN9SemaphoreC1Ej>
    80005800:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005804:	01000513          	li	a0,16
    80005808:	ffffe097          	auipc	ra,0xffffe
    8000580c:	7e4080e7          	jalr	2020(ra) # 80003fec <_Znwm>
    80005810:	00050993          	mv	s3,a0
    80005814:	00090593          	mv	a1,s2
    80005818:	fffff097          	auipc	ra,0xfffff
    8000581c:	a28080e7          	jalr	-1496(ra) # 80004240 <_ZN9SemaphoreC1Ej>
    80005820:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005824:	01000513          	li	a0,16
    80005828:	ffffe097          	auipc	ra,0xffffe
    8000582c:	7c4080e7          	jalr	1988(ra) # 80003fec <_Znwm>
    80005830:	00050913          	mv	s2,a0
    80005834:	00100593          	li	a1,1
    80005838:	fffff097          	auipc	ra,0xfffff
    8000583c:	a08080e7          	jalr	-1528(ra) # 80004240 <_ZN9SemaphoreC1Ej>
    80005840:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005844:	01000513          	li	a0,16
    80005848:	ffffe097          	auipc	ra,0xffffe
    8000584c:	7a4080e7          	jalr	1956(ra) # 80003fec <_Znwm>
    80005850:	00050913          	mv	s2,a0
    80005854:	00100593          	li	a1,1
    80005858:	fffff097          	auipc	ra,0xfffff
    8000585c:	9e8080e7          	jalr	-1560(ra) # 80004240 <_ZN9SemaphoreC1Ej>
    80005860:	0324b823          	sd	s2,48(s1)
}
    80005864:	02813083          	ld	ra,40(sp)
    80005868:	02013403          	ld	s0,32(sp)
    8000586c:	01813483          	ld	s1,24(sp)
    80005870:	01013903          	ld	s2,16(sp)
    80005874:	00813983          	ld	s3,8(sp)
    80005878:	03010113          	addi	sp,sp,48
    8000587c:	00008067          	ret
    80005880:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005884:	00098513          	mv	a0,s3
    80005888:	ffffe097          	auipc	ra,0xffffe
    8000588c:	78c080e7          	jalr	1932(ra) # 80004014 <_ZdlPv>
    80005890:	00048513          	mv	a0,s1
    80005894:	0000b097          	auipc	ra,0xb
    80005898:	464080e7          	jalr	1124(ra) # 80010cf8 <_Unwind_Resume>
    8000589c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800058a0:	00098513          	mv	a0,s3
    800058a4:	ffffe097          	auipc	ra,0xffffe
    800058a8:	770080e7          	jalr	1904(ra) # 80004014 <_ZdlPv>
    800058ac:	00048513          	mv	a0,s1
    800058b0:	0000b097          	auipc	ra,0xb
    800058b4:	448080e7          	jalr	1096(ra) # 80010cf8 <_Unwind_Resume>
    800058b8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800058bc:	00090513          	mv	a0,s2
    800058c0:	ffffe097          	auipc	ra,0xffffe
    800058c4:	754080e7          	jalr	1876(ra) # 80004014 <_ZdlPv>
    800058c8:	00048513          	mv	a0,s1
    800058cc:	0000b097          	auipc	ra,0xb
    800058d0:	42c080e7          	jalr	1068(ra) # 80010cf8 <_Unwind_Resume>
    800058d4:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800058d8:	00090513          	mv	a0,s2
    800058dc:	ffffe097          	auipc	ra,0xffffe
    800058e0:	738080e7          	jalr	1848(ra) # 80004014 <_ZdlPv>
    800058e4:	00048513          	mv	a0,s1
    800058e8:	0000b097          	auipc	ra,0xb
    800058ec:	410080e7          	jalr	1040(ra) # 80010cf8 <_Unwind_Resume>

00000000800058f0 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800058f0:	fe010113          	addi	sp,sp,-32
    800058f4:	00113c23          	sd	ra,24(sp)
    800058f8:	00813823          	sd	s0,16(sp)
    800058fc:	00913423          	sd	s1,8(sp)
    80005900:	01213023          	sd	s2,0(sp)
    80005904:	02010413          	addi	s0,sp,32
    80005908:	00050493          	mv	s1,a0
    8000590c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005910:	01853503          	ld	a0,24(a0)
    80005914:	fffff097          	auipc	ra,0xfffff
    80005918:	8f4080e7          	jalr	-1804(ra) # 80004208 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000591c:	0304b503          	ld	a0,48(s1)
    80005920:	fffff097          	auipc	ra,0xfffff
    80005924:	8e8080e7          	jalr	-1816(ra) # 80004208 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005928:	0084b783          	ld	a5,8(s1)
    8000592c:	0144a703          	lw	a4,20(s1)
    80005930:	00271713          	slli	a4,a4,0x2
    80005934:	00e787b3          	add	a5,a5,a4
    80005938:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000593c:	0144a783          	lw	a5,20(s1)
    80005940:	0017879b          	addiw	a5,a5,1
    80005944:	0004a703          	lw	a4,0(s1)
    80005948:	02e7e7bb          	remw	a5,a5,a4
    8000594c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005950:	0304b503          	ld	a0,48(s1)
    80005954:	fffff097          	auipc	ra,0xfffff
    80005958:	938080e7          	jalr	-1736(ra) # 8000428c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000595c:	0204b503          	ld	a0,32(s1)
    80005960:	fffff097          	auipc	ra,0xfffff
    80005964:	92c080e7          	jalr	-1748(ra) # 8000428c <_ZN9Semaphore6signalEv>

}
    80005968:	01813083          	ld	ra,24(sp)
    8000596c:	01013403          	ld	s0,16(sp)
    80005970:	00813483          	ld	s1,8(sp)
    80005974:	00013903          	ld	s2,0(sp)
    80005978:	02010113          	addi	sp,sp,32
    8000597c:	00008067          	ret

0000000080005980 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005980:	fe010113          	addi	sp,sp,-32
    80005984:	00113c23          	sd	ra,24(sp)
    80005988:	00813823          	sd	s0,16(sp)
    8000598c:	00913423          	sd	s1,8(sp)
    80005990:	01213023          	sd	s2,0(sp)
    80005994:	02010413          	addi	s0,sp,32
    80005998:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000599c:	02053503          	ld	a0,32(a0)
    800059a0:	fffff097          	auipc	ra,0xfffff
    800059a4:	868080e7          	jalr	-1944(ra) # 80004208 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800059a8:	0284b503          	ld	a0,40(s1)
    800059ac:	fffff097          	auipc	ra,0xfffff
    800059b0:	85c080e7          	jalr	-1956(ra) # 80004208 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800059b4:	0084b703          	ld	a4,8(s1)
    800059b8:	0104a783          	lw	a5,16(s1)
    800059bc:	00279693          	slli	a3,a5,0x2
    800059c0:	00d70733          	add	a4,a4,a3
    800059c4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800059c8:	0017879b          	addiw	a5,a5,1
    800059cc:	0004a703          	lw	a4,0(s1)
    800059d0:	02e7e7bb          	remw	a5,a5,a4
    800059d4:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800059d8:	0284b503          	ld	a0,40(s1)
    800059dc:	fffff097          	auipc	ra,0xfffff
    800059e0:	8b0080e7          	jalr	-1872(ra) # 8000428c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800059e4:	0184b503          	ld	a0,24(s1)
    800059e8:	fffff097          	auipc	ra,0xfffff
    800059ec:	8a4080e7          	jalr	-1884(ra) # 8000428c <_ZN9Semaphore6signalEv>

    return ret;
}
    800059f0:	00090513          	mv	a0,s2
    800059f4:	01813083          	ld	ra,24(sp)
    800059f8:	01013403          	ld	s0,16(sp)
    800059fc:	00813483          	ld	s1,8(sp)
    80005a00:	00013903          	ld	s2,0(sp)
    80005a04:	02010113          	addi	sp,sp,32
    80005a08:	00008067          	ret

0000000080005a0c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005a0c:	fe010113          	addi	sp,sp,-32
    80005a10:	00113c23          	sd	ra,24(sp)
    80005a14:	00813823          	sd	s0,16(sp)
    80005a18:	00913423          	sd	s1,8(sp)
    80005a1c:	01213023          	sd	s2,0(sp)
    80005a20:	02010413          	addi	s0,sp,32
    80005a24:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005a28:	02853503          	ld	a0,40(a0)
    80005a2c:	ffffe097          	auipc	ra,0xffffe
    80005a30:	7dc080e7          	jalr	2012(ra) # 80004208 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005a34:	0304b503          	ld	a0,48(s1)
    80005a38:	ffffe097          	auipc	ra,0xffffe
    80005a3c:	7d0080e7          	jalr	2000(ra) # 80004208 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005a40:	0144a783          	lw	a5,20(s1)
    80005a44:	0104a903          	lw	s2,16(s1)
    80005a48:	0327ce63          	blt	a5,s2,80005a84 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005a4c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005a50:	0304b503          	ld	a0,48(s1)
    80005a54:	fffff097          	auipc	ra,0xfffff
    80005a58:	838080e7          	jalr	-1992(ra) # 8000428c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005a5c:	0284b503          	ld	a0,40(s1)
    80005a60:	fffff097          	auipc	ra,0xfffff
    80005a64:	82c080e7          	jalr	-2004(ra) # 8000428c <_ZN9Semaphore6signalEv>

    return ret;
}
    80005a68:	00090513          	mv	a0,s2
    80005a6c:	01813083          	ld	ra,24(sp)
    80005a70:	01013403          	ld	s0,16(sp)
    80005a74:	00813483          	ld	s1,8(sp)
    80005a78:	00013903          	ld	s2,0(sp)
    80005a7c:	02010113          	addi	sp,sp,32
    80005a80:	00008067          	ret
        ret = cap - head + tail;
    80005a84:	0004a703          	lw	a4,0(s1)
    80005a88:	4127093b          	subw	s2,a4,s2
    80005a8c:	00f9093b          	addw	s2,s2,a5
    80005a90:	fc1ff06f          	j	80005a50 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005a94 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005a94:	fe010113          	addi	sp,sp,-32
    80005a98:	00113c23          	sd	ra,24(sp)
    80005a9c:	00813823          	sd	s0,16(sp)
    80005aa0:	00913423          	sd	s1,8(sp)
    80005aa4:	02010413          	addi	s0,sp,32
    80005aa8:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005aac:	00a00513          	li	a0,10
    80005ab0:	fffff097          	auipc	ra,0xfffff
    80005ab4:	83c080e7          	jalr	-1988(ra) # 800042ec <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005ab8:	00004517          	auipc	a0,0x4
    80005abc:	a2050513          	addi	a0,a0,-1504 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80005ac0:	00000097          	auipc	ra,0x0
    80005ac4:	a30080e7          	jalr	-1488(ra) # 800054f0 <_Z11printStringPKc>
    while (getCnt()) {
    80005ac8:	00048513          	mv	a0,s1
    80005acc:	00000097          	auipc	ra,0x0
    80005ad0:	f40080e7          	jalr	-192(ra) # 80005a0c <_ZN9BufferCPP6getCntEv>
    80005ad4:	02050c63          	beqz	a0,80005b0c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005ad8:	0084b783          	ld	a5,8(s1)
    80005adc:	0104a703          	lw	a4,16(s1)
    80005ae0:	00271713          	slli	a4,a4,0x2
    80005ae4:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005ae8:	0007c503          	lbu	a0,0(a5)
    80005aec:	fffff097          	auipc	ra,0xfffff
    80005af0:	800080e7          	jalr	-2048(ra) # 800042ec <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005af4:	0104a783          	lw	a5,16(s1)
    80005af8:	0017879b          	addiw	a5,a5,1
    80005afc:	0004a703          	lw	a4,0(s1)
    80005b00:	02e7e7bb          	remw	a5,a5,a4
    80005b04:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005b08:	fc1ff06f          	j	80005ac8 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005b0c:	02100513          	li	a0,33
    80005b10:	ffffe097          	auipc	ra,0xffffe
    80005b14:	7dc080e7          	jalr	2012(ra) # 800042ec <_ZN7Console4putcEc>
    Console::putc('\n');
    80005b18:	00a00513          	li	a0,10
    80005b1c:	ffffe097          	auipc	ra,0xffffe
    80005b20:	7d0080e7          	jalr	2000(ra) # 800042ec <_ZN7Console4putcEc>
    mem_free(buffer);
    80005b24:	0084b503          	ld	a0,8(s1)
    80005b28:	ffffd097          	auipc	ra,0xffffd
    80005b2c:	824080e7          	jalr	-2012(ra) # 8000234c <_Z8mem_freePv>
    delete itemAvailable;
    80005b30:	0204b503          	ld	a0,32(s1)
    80005b34:	00050863          	beqz	a0,80005b44 <_ZN9BufferCPPD1Ev+0xb0>
    80005b38:	00053783          	ld	a5,0(a0)
    80005b3c:	0087b783          	ld	a5,8(a5)
    80005b40:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005b44:	0184b503          	ld	a0,24(s1)
    80005b48:	00050863          	beqz	a0,80005b58 <_ZN9BufferCPPD1Ev+0xc4>
    80005b4c:	00053783          	ld	a5,0(a0)
    80005b50:	0087b783          	ld	a5,8(a5)
    80005b54:	000780e7          	jalr	a5
    delete mutexTail;
    80005b58:	0304b503          	ld	a0,48(s1)
    80005b5c:	00050863          	beqz	a0,80005b6c <_ZN9BufferCPPD1Ev+0xd8>
    80005b60:	00053783          	ld	a5,0(a0)
    80005b64:	0087b783          	ld	a5,8(a5)
    80005b68:	000780e7          	jalr	a5
    delete mutexHead;
    80005b6c:	0284b503          	ld	a0,40(s1)
    80005b70:	00050863          	beqz	a0,80005b80 <_ZN9BufferCPPD1Ev+0xec>
    80005b74:	00053783          	ld	a5,0(a0)
    80005b78:	0087b783          	ld	a5,8(a5)
    80005b7c:	000780e7          	jalr	a5
}
    80005b80:	01813083          	ld	ra,24(sp)
    80005b84:	01013403          	ld	s0,16(sp)
    80005b88:	00813483          	ld	s1,8(sp)
    80005b8c:	02010113          	addi	sp,sp,32
    80005b90:	00008067          	ret

0000000080005b94 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80005b94:	fe010113          	addi	sp,sp,-32
    80005b98:	00113c23          	sd	ra,24(sp)
    80005b9c:	00813823          	sd	s0,16(sp)
    80005ba0:	00913423          	sd	s1,8(sp)
    80005ba4:	01213023          	sd	s2,0(sp)
    80005ba8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005bac:	00000913          	li	s2,0
    80005bb0:	0380006f          	j	80005be8 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005bb4:	ffffd097          	auipc	ra,0xffffd
    80005bb8:	844080e7          	jalr	-1980(ra) # 800023f8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005bbc:	00148493          	addi	s1,s1,1
    80005bc0:	000027b7          	lui	a5,0x2
    80005bc4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005bc8:	0097ee63          	bltu	a5,s1,80005be4 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005bcc:	00000713          	li	a4,0
    80005bd0:	000077b7          	lui	a5,0x7
    80005bd4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005bd8:	fce7eee3          	bltu	a5,a4,80005bb4 <_Z11workerBodyAPv+0x20>
    80005bdc:	00170713          	addi	a4,a4,1
    80005be0:	ff1ff06f          	j	80005bd0 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005be4:	00190913          	addi	s2,s2,1
    80005be8:	00900793          	li	a5,9
    80005bec:	0527e063          	bltu	a5,s2,80005c2c <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005bf0:	00004517          	auipc	a0,0x4
    80005bf4:	90050513          	addi	a0,a0,-1792 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80005bf8:	00000097          	auipc	ra,0x0
    80005bfc:	8f8080e7          	jalr	-1800(ra) # 800054f0 <_Z11printStringPKc>
    80005c00:	00000613          	li	a2,0
    80005c04:	00a00593          	li	a1,10
    80005c08:	0009051b          	sext.w	a0,s2
    80005c0c:	00000097          	auipc	ra,0x0
    80005c10:	a7c080e7          	jalr	-1412(ra) # 80005688 <_Z8printIntiii>
    80005c14:	00004517          	auipc	a0,0x4
    80005c18:	ae450513          	addi	a0,a0,-1308 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80005c1c:	00000097          	auipc	ra,0x0
    80005c20:	8d4080e7          	jalr	-1836(ra) # 800054f0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005c24:	00000493          	li	s1,0
    80005c28:	f99ff06f          	j	80005bc0 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80005c2c:	00004517          	auipc	a0,0x4
    80005c30:	8cc50513          	addi	a0,a0,-1844 # 800094f8 <CONSOLE_STATUS+0x4e8>
    80005c34:	00000097          	auipc	ra,0x0
    80005c38:	8bc080e7          	jalr	-1860(ra) # 800054f0 <_Z11printStringPKc>
    finishedA = true;
    80005c3c:	00100793          	li	a5,1
    80005c40:	0000a717          	auipc	a4,0xa
    80005c44:	fef70423          	sb	a5,-24(a4) # 8000fc28 <finishedA>
}
    80005c48:	01813083          	ld	ra,24(sp)
    80005c4c:	01013403          	ld	s0,16(sp)
    80005c50:	00813483          	ld	s1,8(sp)
    80005c54:	00013903          	ld	s2,0(sp)
    80005c58:	02010113          	addi	sp,sp,32
    80005c5c:	00008067          	ret

0000000080005c60 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80005c60:	fe010113          	addi	sp,sp,-32
    80005c64:	00113c23          	sd	ra,24(sp)
    80005c68:	00813823          	sd	s0,16(sp)
    80005c6c:	00913423          	sd	s1,8(sp)
    80005c70:	01213023          	sd	s2,0(sp)
    80005c74:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005c78:	00000913          	li	s2,0
    80005c7c:	0380006f          	j	80005cb4 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005c80:	ffffc097          	auipc	ra,0xffffc
    80005c84:	778080e7          	jalr	1912(ra) # 800023f8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005c88:	00148493          	addi	s1,s1,1
    80005c8c:	000027b7          	lui	a5,0x2
    80005c90:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005c94:	0097ee63          	bltu	a5,s1,80005cb0 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005c98:	00000713          	li	a4,0
    80005c9c:	000077b7          	lui	a5,0x7
    80005ca0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005ca4:	fce7eee3          	bltu	a5,a4,80005c80 <_Z11workerBodyBPv+0x20>
    80005ca8:	00170713          	addi	a4,a4,1
    80005cac:	ff1ff06f          	j	80005c9c <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005cb0:	00190913          	addi	s2,s2,1
    80005cb4:	00f00793          	li	a5,15
    80005cb8:	0527e063          	bltu	a5,s2,80005cf8 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005cbc:	00004517          	auipc	a0,0x4
    80005cc0:	84c50513          	addi	a0,a0,-1972 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005cc4:	00000097          	auipc	ra,0x0
    80005cc8:	82c080e7          	jalr	-2004(ra) # 800054f0 <_Z11printStringPKc>
    80005ccc:	00000613          	li	a2,0
    80005cd0:	00a00593          	li	a1,10
    80005cd4:	0009051b          	sext.w	a0,s2
    80005cd8:	00000097          	auipc	ra,0x0
    80005cdc:	9b0080e7          	jalr	-1616(ra) # 80005688 <_Z8printIntiii>
    80005ce0:	00004517          	auipc	a0,0x4
    80005ce4:	a1850513          	addi	a0,a0,-1512 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80005ce8:	00000097          	auipc	ra,0x0
    80005cec:	808080e7          	jalr	-2040(ra) # 800054f0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005cf0:	00000493          	li	s1,0
    80005cf4:	f99ff06f          	j	80005c8c <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    80005cf8:	ffffc097          	auipc	ra,0xffffc
    80005cfc:	700080e7          	jalr	1792(ra) # 800023f8 <_Z15thread_dispatchv>
    printString("B finished!\n");
    80005d00:	00004517          	auipc	a0,0x4
    80005d04:	81050513          	addi	a0,a0,-2032 # 80009510 <CONSOLE_STATUS+0x500>
    80005d08:	fffff097          	auipc	ra,0xfffff
    80005d0c:	7e8080e7          	jalr	2024(ra) # 800054f0 <_Z11printStringPKc>
    finishedB = true;
    80005d10:	00100793          	li	a5,1
    80005d14:	0000a717          	auipc	a4,0xa
    80005d18:	f0f70aa3          	sb	a5,-235(a4) # 8000fc29 <finishedB>
}
    80005d1c:	01813083          	ld	ra,24(sp)
    80005d20:	01013403          	ld	s0,16(sp)
    80005d24:	00813483          	ld	s1,8(sp)
    80005d28:	00013903          	ld	s2,0(sp)
    80005d2c:	02010113          	addi	sp,sp,32
    80005d30:	00008067          	ret

0000000080005d34 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80005d34:	fe010113          	addi	sp,sp,-32
    80005d38:	00113c23          	sd	ra,24(sp)
    80005d3c:	00813823          	sd	s0,16(sp)
    80005d40:	00913423          	sd	s1,8(sp)
    80005d44:	01213023          	sd	s2,0(sp)
    80005d48:	02010413          	addi	s0,sp,32
    80005d4c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005d50:	00100793          	li	a5,1
    80005d54:	02a7f863          	bgeu	a5,a0,80005d84 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005d58:	00a00793          	li	a5,10
    80005d5c:	02f577b3          	remu	a5,a0,a5
    80005d60:	02078e63          	beqz	a5,80005d9c <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005d64:	fff48513          	addi	a0,s1,-1
    80005d68:	00000097          	auipc	ra,0x0
    80005d6c:	fcc080e7          	jalr	-52(ra) # 80005d34 <_Z9fibonaccim>
    80005d70:	00050913          	mv	s2,a0
    80005d74:	ffe48513          	addi	a0,s1,-2
    80005d78:	00000097          	auipc	ra,0x0
    80005d7c:	fbc080e7          	jalr	-68(ra) # 80005d34 <_Z9fibonaccim>
    80005d80:	00a90533          	add	a0,s2,a0
}
    80005d84:	01813083          	ld	ra,24(sp)
    80005d88:	01013403          	ld	s0,16(sp)
    80005d8c:	00813483          	ld	s1,8(sp)
    80005d90:	00013903          	ld	s2,0(sp)
    80005d94:	02010113          	addi	sp,sp,32
    80005d98:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005d9c:	ffffc097          	auipc	ra,0xffffc
    80005da0:	65c080e7          	jalr	1628(ra) # 800023f8 <_Z15thread_dispatchv>
    80005da4:	fc1ff06f          	j	80005d64 <_Z9fibonaccim+0x30>

0000000080005da8 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80005da8:	fe010113          	addi	sp,sp,-32
    80005dac:	00113c23          	sd	ra,24(sp)
    80005db0:	00813823          	sd	s0,16(sp)
    80005db4:	00913423          	sd	s1,8(sp)
    80005db8:	01213023          	sd	s2,0(sp)
    80005dbc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005dc0:	00000493          	li	s1,0
    80005dc4:	0400006f          	j	80005e04 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005dc8:	00003517          	auipc	a0,0x3
    80005dcc:	75850513          	addi	a0,a0,1880 # 80009520 <CONSOLE_STATUS+0x510>
    80005dd0:	fffff097          	auipc	ra,0xfffff
    80005dd4:	720080e7          	jalr	1824(ra) # 800054f0 <_Z11printStringPKc>
    80005dd8:	00000613          	li	a2,0
    80005ddc:	00a00593          	li	a1,10
    80005de0:	00048513          	mv	a0,s1
    80005de4:	00000097          	auipc	ra,0x0
    80005de8:	8a4080e7          	jalr	-1884(ra) # 80005688 <_Z8printIntiii>
    80005dec:	00004517          	auipc	a0,0x4
    80005df0:	90c50513          	addi	a0,a0,-1780 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80005df4:	fffff097          	auipc	ra,0xfffff
    80005df8:	6fc080e7          	jalr	1788(ra) # 800054f0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005dfc:	0014849b          	addiw	s1,s1,1
    80005e00:	0ff4f493          	andi	s1,s1,255
    80005e04:	00200793          	li	a5,2
    80005e08:	fc97f0e3          	bgeu	a5,s1,80005dc8 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80005e0c:	00003517          	auipc	a0,0x3
    80005e10:	71c50513          	addi	a0,a0,1820 # 80009528 <CONSOLE_STATUS+0x518>
    80005e14:	fffff097          	auipc	ra,0xfffff
    80005e18:	6dc080e7          	jalr	1756(ra) # 800054f0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005e1c:	00700313          	li	t1,7
    thread_dispatch();
    80005e20:	ffffc097          	auipc	ra,0xffffc
    80005e24:	5d8080e7          	jalr	1496(ra) # 800023f8 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005e28:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80005e2c:	00003517          	auipc	a0,0x3
    80005e30:	70c50513          	addi	a0,a0,1804 # 80009538 <CONSOLE_STATUS+0x528>
    80005e34:	fffff097          	auipc	ra,0xfffff
    80005e38:	6bc080e7          	jalr	1724(ra) # 800054f0 <_Z11printStringPKc>
    80005e3c:	00000613          	li	a2,0
    80005e40:	00a00593          	li	a1,10
    80005e44:	0009051b          	sext.w	a0,s2
    80005e48:	00000097          	auipc	ra,0x0
    80005e4c:	840080e7          	jalr	-1984(ra) # 80005688 <_Z8printIntiii>
    80005e50:	00004517          	auipc	a0,0x4
    80005e54:	8a850513          	addi	a0,a0,-1880 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80005e58:	fffff097          	auipc	ra,0xfffff
    80005e5c:	698080e7          	jalr	1688(ra) # 800054f0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005e60:	00c00513          	li	a0,12
    80005e64:	00000097          	auipc	ra,0x0
    80005e68:	ed0080e7          	jalr	-304(ra) # 80005d34 <_Z9fibonaccim>
    80005e6c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005e70:	00003517          	auipc	a0,0x3
    80005e74:	6d050513          	addi	a0,a0,1744 # 80009540 <CONSOLE_STATUS+0x530>
    80005e78:	fffff097          	auipc	ra,0xfffff
    80005e7c:	678080e7          	jalr	1656(ra) # 800054f0 <_Z11printStringPKc>
    80005e80:	00000613          	li	a2,0
    80005e84:	00a00593          	li	a1,10
    80005e88:	0009051b          	sext.w	a0,s2
    80005e8c:	fffff097          	auipc	ra,0xfffff
    80005e90:	7fc080e7          	jalr	2044(ra) # 80005688 <_Z8printIntiii>
    80005e94:	00004517          	auipc	a0,0x4
    80005e98:	86450513          	addi	a0,a0,-1948 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80005e9c:	fffff097          	auipc	ra,0xfffff
    80005ea0:	654080e7          	jalr	1620(ra) # 800054f0 <_Z11printStringPKc>
    80005ea4:	0400006f          	j	80005ee4 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005ea8:	00003517          	auipc	a0,0x3
    80005eac:	67850513          	addi	a0,a0,1656 # 80009520 <CONSOLE_STATUS+0x510>
    80005eb0:	fffff097          	auipc	ra,0xfffff
    80005eb4:	640080e7          	jalr	1600(ra) # 800054f0 <_Z11printStringPKc>
    80005eb8:	00000613          	li	a2,0
    80005ebc:	00a00593          	li	a1,10
    80005ec0:	00048513          	mv	a0,s1
    80005ec4:	fffff097          	auipc	ra,0xfffff
    80005ec8:	7c4080e7          	jalr	1988(ra) # 80005688 <_Z8printIntiii>
    80005ecc:	00004517          	auipc	a0,0x4
    80005ed0:	82c50513          	addi	a0,a0,-2004 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80005ed4:	fffff097          	auipc	ra,0xfffff
    80005ed8:	61c080e7          	jalr	1564(ra) # 800054f0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005edc:	0014849b          	addiw	s1,s1,1
    80005ee0:	0ff4f493          	andi	s1,s1,255
    80005ee4:	00500793          	li	a5,5
    80005ee8:	fc97f0e3          	bgeu	a5,s1,80005ea8 <_Z11workerBodyCPv+0x100>
    }

    thread_dispatch();
    80005eec:	ffffc097          	auipc	ra,0xffffc
    80005ef0:	50c080e7          	jalr	1292(ra) # 800023f8 <_Z15thread_dispatchv>
    printString("A finished!\n");
    80005ef4:	00003517          	auipc	a0,0x3
    80005ef8:	60450513          	addi	a0,a0,1540 # 800094f8 <CONSOLE_STATUS+0x4e8>
    80005efc:	fffff097          	auipc	ra,0xfffff
    80005f00:	5f4080e7          	jalr	1524(ra) # 800054f0 <_Z11printStringPKc>
    finishedC = true;
    80005f04:	00100793          	li	a5,1
    80005f08:	0000a717          	auipc	a4,0xa
    80005f0c:	d2f70123          	sb	a5,-734(a4) # 8000fc2a <finishedC>
}
    80005f10:	01813083          	ld	ra,24(sp)
    80005f14:	01013403          	ld	s0,16(sp)
    80005f18:	00813483          	ld	s1,8(sp)
    80005f1c:	00013903          	ld	s2,0(sp)
    80005f20:	02010113          	addi	sp,sp,32
    80005f24:	00008067          	ret

0000000080005f28 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80005f28:	fe010113          	addi	sp,sp,-32
    80005f2c:	00113c23          	sd	ra,24(sp)
    80005f30:	00813823          	sd	s0,16(sp)
    80005f34:	00913423          	sd	s1,8(sp)
    80005f38:	01213023          	sd	s2,0(sp)
    80005f3c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005f40:	00a00493          	li	s1,10
    80005f44:	0400006f          	j	80005f84 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005f48:	00003517          	auipc	a0,0x3
    80005f4c:	60850513          	addi	a0,a0,1544 # 80009550 <CONSOLE_STATUS+0x540>
    80005f50:	fffff097          	auipc	ra,0xfffff
    80005f54:	5a0080e7          	jalr	1440(ra) # 800054f0 <_Z11printStringPKc>
    80005f58:	00000613          	li	a2,0
    80005f5c:	00a00593          	li	a1,10
    80005f60:	00048513          	mv	a0,s1
    80005f64:	fffff097          	auipc	ra,0xfffff
    80005f68:	724080e7          	jalr	1828(ra) # 80005688 <_Z8printIntiii>
    80005f6c:	00003517          	auipc	a0,0x3
    80005f70:	78c50513          	addi	a0,a0,1932 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80005f74:	fffff097          	auipc	ra,0xfffff
    80005f78:	57c080e7          	jalr	1404(ra) # 800054f0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005f7c:	0014849b          	addiw	s1,s1,1
    80005f80:	0ff4f493          	andi	s1,s1,255
    80005f84:	00c00793          	li	a5,12
    80005f88:	fc97f0e3          	bgeu	a5,s1,80005f48 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005f8c:	00003517          	auipc	a0,0x3
    80005f90:	5cc50513          	addi	a0,a0,1484 # 80009558 <CONSOLE_STATUS+0x548>
    80005f94:	fffff097          	auipc	ra,0xfffff
    80005f98:	55c080e7          	jalr	1372(ra) # 800054f0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005f9c:	00500313          	li	t1,5
    thread_dispatch();
    80005fa0:	ffffc097          	auipc	ra,0xffffc
    80005fa4:	458080e7          	jalr	1112(ra) # 800023f8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005fa8:	01000513          	li	a0,16
    80005fac:	00000097          	auipc	ra,0x0
    80005fb0:	d88080e7          	jalr	-632(ra) # 80005d34 <_Z9fibonaccim>
    80005fb4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005fb8:	00003517          	auipc	a0,0x3
    80005fbc:	5b050513          	addi	a0,a0,1456 # 80009568 <CONSOLE_STATUS+0x558>
    80005fc0:	fffff097          	auipc	ra,0xfffff
    80005fc4:	530080e7          	jalr	1328(ra) # 800054f0 <_Z11printStringPKc>
    80005fc8:	00000613          	li	a2,0
    80005fcc:	00a00593          	li	a1,10
    80005fd0:	0009051b          	sext.w	a0,s2
    80005fd4:	fffff097          	auipc	ra,0xfffff
    80005fd8:	6b4080e7          	jalr	1716(ra) # 80005688 <_Z8printIntiii>
    80005fdc:	00003517          	auipc	a0,0x3
    80005fe0:	71c50513          	addi	a0,a0,1820 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80005fe4:	fffff097          	auipc	ra,0xfffff
    80005fe8:	50c080e7          	jalr	1292(ra) # 800054f0 <_Z11printStringPKc>
    80005fec:	0400006f          	j	8000602c <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005ff0:	00003517          	auipc	a0,0x3
    80005ff4:	56050513          	addi	a0,a0,1376 # 80009550 <CONSOLE_STATUS+0x540>
    80005ff8:	fffff097          	auipc	ra,0xfffff
    80005ffc:	4f8080e7          	jalr	1272(ra) # 800054f0 <_Z11printStringPKc>
    80006000:	00000613          	li	a2,0
    80006004:	00a00593          	li	a1,10
    80006008:	00048513          	mv	a0,s1
    8000600c:	fffff097          	auipc	ra,0xfffff
    80006010:	67c080e7          	jalr	1660(ra) # 80005688 <_Z8printIntiii>
    80006014:	00003517          	auipc	a0,0x3
    80006018:	6e450513          	addi	a0,a0,1764 # 800096f8 <CONSOLE_STATUS+0x6e8>
    8000601c:	fffff097          	auipc	ra,0xfffff
    80006020:	4d4080e7          	jalr	1236(ra) # 800054f0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006024:	0014849b          	addiw	s1,s1,1
    80006028:	0ff4f493          	andi	s1,s1,255
    8000602c:	00f00793          	li	a5,15
    80006030:	fc97f0e3          	bgeu	a5,s1,80005ff0 <_Z11workerBodyDPv+0xc8>
    }

    thread_dispatch();
    80006034:	ffffc097          	auipc	ra,0xffffc
    80006038:	3c4080e7          	jalr	964(ra) # 800023f8 <_Z15thread_dispatchv>
    printString("D finished!\n");
    8000603c:	00003517          	auipc	a0,0x3
    80006040:	53c50513          	addi	a0,a0,1340 # 80009578 <CONSOLE_STATUS+0x568>
    80006044:	fffff097          	auipc	ra,0xfffff
    80006048:	4ac080e7          	jalr	1196(ra) # 800054f0 <_Z11printStringPKc>
    finishedD = true;
    8000604c:	00100793          	li	a5,1
    80006050:	0000a717          	auipc	a4,0xa
    80006054:	bcf70da3          	sb	a5,-1061(a4) # 8000fc2b <finishedD>
}
    80006058:	01813083          	ld	ra,24(sp)
    8000605c:	01013403          	ld	s0,16(sp)
    80006060:	00813483          	ld	s1,8(sp)
    80006064:	00013903          	ld	s2,0(sp)
    80006068:	02010113          	addi	sp,sp,32
    8000606c:	00008067          	ret

0000000080006070 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80006070:	fc010113          	addi	sp,sp,-64
    80006074:	02113c23          	sd	ra,56(sp)
    80006078:	02813823          	sd	s0,48(sp)
    8000607c:	02913423          	sd	s1,40(sp)
    80006080:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006084:	00000613          	li	a2,0
    80006088:	00000597          	auipc	a1,0x0
    8000608c:	b0c58593          	addi	a1,a1,-1268 # 80005b94 <_Z11workerBodyAPv>
    80006090:	fc040513          	addi	a0,s0,-64
    80006094:	ffffc097          	auipc	ra,0xffffc
    80006098:	2e4080e7          	jalr	740(ra) # 80002378 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    8000609c:	00003517          	auipc	a0,0x3
    800060a0:	4ec50513          	addi	a0,a0,1260 # 80009588 <CONSOLE_STATUS+0x578>
    800060a4:	fffff097          	auipc	ra,0xfffff
    800060a8:	44c080e7          	jalr	1100(ra) # 800054f0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800060ac:	00000613          	li	a2,0
    800060b0:	00000597          	auipc	a1,0x0
    800060b4:	bb058593          	addi	a1,a1,-1104 # 80005c60 <_Z11workerBodyBPv>
    800060b8:	fc840513          	addi	a0,s0,-56
    800060bc:	ffffc097          	auipc	ra,0xffffc
    800060c0:	2bc080e7          	jalr	700(ra) # 80002378 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800060c4:	00003517          	auipc	a0,0x3
    800060c8:	4dc50513          	addi	a0,a0,1244 # 800095a0 <CONSOLE_STATUS+0x590>
    800060cc:	fffff097          	auipc	ra,0xfffff
    800060d0:	424080e7          	jalr	1060(ra) # 800054f0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800060d4:	00000613          	li	a2,0
    800060d8:	00000597          	auipc	a1,0x0
    800060dc:	cd058593          	addi	a1,a1,-816 # 80005da8 <_Z11workerBodyCPv>
    800060e0:	fd040513          	addi	a0,s0,-48
    800060e4:	ffffc097          	auipc	ra,0xffffc
    800060e8:	294080e7          	jalr	660(ra) # 80002378 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800060ec:	00003517          	auipc	a0,0x3
    800060f0:	4cc50513          	addi	a0,a0,1228 # 800095b8 <CONSOLE_STATUS+0x5a8>
    800060f4:	fffff097          	auipc	ra,0xfffff
    800060f8:	3fc080e7          	jalr	1020(ra) # 800054f0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800060fc:	00000613          	li	a2,0
    80006100:	00000597          	auipc	a1,0x0
    80006104:	e2858593          	addi	a1,a1,-472 # 80005f28 <_Z11workerBodyDPv>
    80006108:	fd840513          	addi	a0,s0,-40
    8000610c:	ffffc097          	auipc	ra,0xffffc
    80006110:	26c080e7          	jalr	620(ra) # 80002378 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80006114:	00003517          	auipc	a0,0x3
    80006118:	4bc50513          	addi	a0,a0,1212 # 800095d0 <CONSOLE_STATUS+0x5c0>
    8000611c:	fffff097          	auipc	ra,0xfffff
    80006120:	3d4080e7          	jalr	980(ra) # 800054f0 <_Z11printStringPKc>
    80006124:	00c0006f          	j	80006130 <_Z18Threads_C_API_testv+0xc0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006128:	ffffc097          	auipc	ra,0xffffc
    8000612c:	2d0080e7          	jalr	720(ra) # 800023f8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006130:	0000a797          	auipc	a5,0xa
    80006134:	af87c783          	lbu	a5,-1288(a5) # 8000fc28 <finishedA>
    80006138:	fe0788e3          	beqz	a5,80006128 <_Z18Threads_C_API_testv+0xb8>
    8000613c:	0000a797          	auipc	a5,0xa
    80006140:	aed7c783          	lbu	a5,-1299(a5) # 8000fc29 <finishedB>
    80006144:	fe0782e3          	beqz	a5,80006128 <_Z18Threads_C_API_testv+0xb8>
    80006148:	0000a797          	auipc	a5,0xa
    8000614c:	ae27c783          	lbu	a5,-1310(a5) # 8000fc2a <finishedC>
    80006150:	fc078ce3          	beqz	a5,80006128 <_Z18Threads_C_API_testv+0xb8>
    80006154:	0000a797          	auipc	a5,0xa
    80006158:	ad77c783          	lbu	a5,-1321(a5) # 8000fc2b <finishedD>
    8000615c:	fc0786e3          	beqz	a5,80006128 <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) { delete thread; }
    80006160:	fc040493          	addi	s1,s0,-64
    80006164:	0080006f          	j	8000616c <_Z18Threads_C_API_testv+0xfc>
    80006168:	00848493          	addi	s1,s1,8
    8000616c:	fe040793          	addi	a5,s0,-32
    80006170:	00f48c63          	beq	s1,a5,80006188 <_Z18Threads_C_API_testv+0x118>
    80006174:	0004b503          	ld	a0,0(s1)
    80006178:	fe0508e3          	beqz	a0,80006168 <_Z18Threads_C_API_testv+0xf8>
    8000617c:	ffffc097          	auipc	ra,0xffffc
    80006180:	4f8080e7          	jalr	1272(ra) # 80002674 <_ZN7_threaddlEPv>
    80006184:	fe5ff06f          	j	80006168 <_Z18Threads_C_API_testv+0xf8>
}
    80006188:	03813083          	ld	ra,56(sp)
    8000618c:	03013403          	ld	s0,48(sp)
    80006190:	02813483          	ld	s1,40(sp)
    80006194:	04010113          	addi	sp,sp,64
    80006198:	00008067          	ret

000000008000619c <_Z8userMainv>:

//#include "ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain()
{
    8000619c:	ff010113          	addi	sp,sp,-16
    800061a0:	00113423          	sd	ra,8(sp)
    800061a4:	00813023          	sd	s0,0(sp)
    800061a8:	01010413          	addi	s0,sp,16
    //__asm__ volatile("csrr a0, sstatus"); // test for changing privilege

    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    800061ac:	00000097          	auipc	ra,0x0
    800061b0:	ec4080e7          	jalr	-316(ra) # 80006070 <_Z18Threads_C_API_testv>
    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    800061b4:	00813083          	ld	ra,8(sp)
    800061b8:	00013403          	ld	s0,0(sp)
    800061bc:	01010113          	addi	sp,sp,16
    800061c0:	00008067          	ret

00000000800061c4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800061c4:	fe010113          	addi	sp,sp,-32
    800061c8:	00113c23          	sd	ra,24(sp)
    800061cc:	00813823          	sd	s0,16(sp)
    800061d0:	00913423          	sd	s1,8(sp)
    800061d4:	01213023          	sd	s2,0(sp)
    800061d8:	02010413          	addi	s0,sp,32
    800061dc:	00050493          	mv	s1,a0
    800061e0:	00058913          	mv	s2,a1
    800061e4:	0015879b          	addiw	a5,a1,1
    800061e8:	0007851b          	sext.w	a0,a5
    800061ec:	00f4a023          	sw	a5,0(s1)
    800061f0:	0004a823          	sw	zero,16(s1)
    800061f4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800061f8:	00251513          	slli	a0,a0,0x2
    800061fc:	ffffc097          	auipc	ra,0xffffc
    80006200:	120080e7          	jalr	288(ra) # 8000231c <_Z9mem_allocm>
    80006204:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006208:	00000593          	li	a1,0
    8000620c:	02048513          	addi	a0,s1,32
    80006210:	ffffc097          	auipc	ra,0xffffc
    80006214:	230080e7          	jalr	560(ra) # 80002440 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80006218:	00090593          	mv	a1,s2
    8000621c:	01848513          	addi	a0,s1,24
    80006220:	ffffc097          	auipc	ra,0xffffc
    80006224:	220080e7          	jalr	544(ra) # 80002440 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80006228:	00100593          	li	a1,1
    8000622c:	02848513          	addi	a0,s1,40
    80006230:	ffffc097          	auipc	ra,0xffffc
    80006234:	210080e7          	jalr	528(ra) # 80002440 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006238:	00100593          	li	a1,1
    8000623c:	03048513          	addi	a0,s1,48
    80006240:	ffffc097          	auipc	ra,0xffffc
    80006244:	200080e7          	jalr	512(ra) # 80002440 <_Z8sem_openPP4_semj>
}
    80006248:	01813083          	ld	ra,24(sp)
    8000624c:	01013403          	ld	s0,16(sp)
    80006250:	00813483          	ld	s1,8(sp)
    80006254:	00013903          	ld	s2,0(sp)
    80006258:	02010113          	addi	sp,sp,32
    8000625c:	00008067          	ret

0000000080006260 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006260:	fe010113          	addi	sp,sp,-32
    80006264:	00113c23          	sd	ra,24(sp)
    80006268:	00813823          	sd	s0,16(sp)
    8000626c:	00913423          	sd	s1,8(sp)
    80006270:	01213023          	sd	s2,0(sp)
    80006274:	02010413          	addi	s0,sp,32
    80006278:	00050493          	mv	s1,a0
    8000627c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006280:	01853503          	ld	a0,24(a0)
    80006284:	ffffc097          	auipc	ra,0xffffc
    80006288:	220080e7          	jalr	544(ra) # 800024a4 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    8000628c:	0304b503          	ld	a0,48(s1)
    80006290:	ffffc097          	auipc	ra,0xffffc
    80006294:	214080e7          	jalr	532(ra) # 800024a4 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006298:	0084b783          	ld	a5,8(s1)
    8000629c:	0144a703          	lw	a4,20(s1)
    800062a0:	00271713          	slli	a4,a4,0x2
    800062a4:	00e787b3          	add	a5,a5,a4
    800062a8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800062ac:	0144a783          	lw	a5,20(s1)
    800062b0:	0017879b          	addiw	a5,a5,1
    800062b4:	0004a703          	lw	a4,0(s1)
    800062b8:	02e7e7bb          	remw	a5,a5,a4
    800062bc:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800062c0:	0304b503          	ld	a0,48(s1)
    800062c4:	ffffc097          	auipc	ra,0xffffc
    800062c8:	20c080e7          	jalr	524(ra) # 800024d0 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    800062cc:	0204b503          	ld	a0,32(s1)
    800062d0:	ffffc097          	auipc	ra,0xffffc
    800062d4:	200080e7          	jalr	512(ra) # 800024d0 <_Z10sem_signalP4_sem>

}
    800062d8:	01813083          	ld	ra,24(sp)
    800062dc:	01013403          	ld	s0,16(sp)
    800062e0:	00813483          	ld	s1,8(sp)
    800062e4:	00013903          	ld	s2,0(sp)
    800062e8:	02010113          	addi	sp,sp,32
    800062ec:	00008067          	ret

00000000800062f0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800062f0:	fe010113          	addi	sp,sp,-32
    800062f4:	00113c23          	sd	ra,24(sp)
    800062f8:	00813823          	sd	s0,16(sp)
    800062fc:	00913423          	sd	s1,8(sp)
    80006300:	01213023          	sd	s2,0(sp)
    80006304:	02010413          	addi	s0,sp,32
    80006308:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000630c:	02053503          	ld	a0,32(a0)
    80006310:	ffffc097          	auipc	ra,0xffffc
    80006314:	194080e7          	jalr	404(ra) # 800024a4 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006318:	0284b503          	ld	a0,40(s1)
    8000631c:	ffffc097          	auipc	ra,0xffffc
    80006320:	188080e7          	jalr	392(ra) # 800024a4 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006324:	0084b703          	ld	a4,8(s1)
    80006328:	0104a783          	lw	a5,16(s1)
    8000632c:	00279693          	slli	a3,a5,0x2
    80006330:	00d70733          	add	a4,a4,a3
    80006334:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006338:	0017879b          	addiw	a5,a5,1
    8000633c:	0004a703          	lw	a4,0(s1)
    80006340:	02e7e7bb          	remw	a5,a5,a4
    80006344:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006348:	0284b503          	ld	a0,40(s1)
    8000634c:	ffffc097          	auipc	ra,0xffffc
    80006350:	184080e7          	jalr	388(ra) # 800024d0 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006354:	0184b503          	ld	a0,24(s1)
    80006358:	ffffc097          	auipc	ra,0xffffc
    8000635c:	178080e7          	jalr	376(ra) # 800024d0 <_Z10sem_signalP4_sem>

    return ret;
}
    80006360:	00090513          	mv	a0,s2
    80006364:	01813083          	ld	ra,24(sp)
    80006368:	01013403          	ld	s0,16(sp)
    8000636c:	00813483          	ld	s1,8(sp)
    80006370:	00013903          	ld	s2,0(sp)
    80006374:	02010113          	addi	sp,sp,32
    80006378:	00008067          	ret

000000008000637c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000637c:	fe010113          	addi	sp,sp,-32
    80006380:	00113c23          	sd	ra,24(sp)
    80006384:	00813823          	sd	s0,16(sp)
    80006388:	00913423          	sd	s1,8(sp)
    8000638c:	01213023          	sd	s2,0(sp)
    80006390:	02010413          	addi	s0,sp,32
    80006394:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006398:	02853503          	ld	a0,40(a0)
    8000639c:	ffffc097          	auipc	ra,0xffffc
    800063a0:	108080e7          	jalr	264(ra) # 800024a4 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    800063a4:	0304b503          	ld	a0,48(s1)
    800063a8:	ffffc097          	auipc	ra,0xffffc
    800063ac:	0fc080e7          	jalr	252(ra) # 800024a4 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    800063b0:	0144a783          	lw	a5,20(s1)
    800063b4:	0104a903          	lw	s2,16(s1)
    800063b8:	0327ce63          	blt	a5,s2,800063f4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800063bc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800063c0:	0304b503          	ld	a0,48(s1)
    800063c4:	ffffc097          	auipc	ra,0xffffc
    800063c8:	10c080e7          	jalr	268(ra) # 800024d0 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    800063cc:	0284b503          	ld	a0,40(s1)
    800063d0:	ffffc097          	auipc	ra,0xffffc
    800063d4:	100080e7          	jalr	256(ra) # 800024d0 <_Z10sem_signalP4_sem>

    return ret;
    800063d8:	00090513          	mv	a0,s2
    800063dc:	01813083          	ld	ra,24(sp)
    800063e0:	01013403          	ld	s0,16(sp)
    800063e4:	00813483          	ld	s1,8(sp)
    800063e8:	00013903          	ld	s2,0(sp)
    800063ec:	02010113          	addi	sp,sp,32
    800063f0:	00008067          	ret
        ret = cap - head + tail;
    800063f4:	0004a703          	lw	a4,0(s1)
    800063f8:	4127093b          	subw	s2,a4,s2
    800063fc:	00f9093b          	addw	s2,s2,a5
    80006400:	fc1ff06f          	j	800063c0 <_ZN6Buffer6getCntEv+0x44>

0000000080006404 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006404:	fe010113          	addi	sp,sp,-32
    80006408:	00113c23          	sd	ra,24(sp)
    8000640c:	00813823          	sd	s0,16(sp)
    80006410:	00913423          	sd	s1,8(sp)
    80006414:	02010413          	addi	s0,sp,32
    80006418:	00050493          	mv	s1,a0
    putc('\n');
    8000641c:	00a00513          	li	a0,10
    80006420:	ffffc097          	auipc	ra,0xffffc
    80006424:	1dc080e7          	jalr	476(ra) # 800025fc <_Z4putcc>
    printString("Buffer deleted!\n");
    80006428:	00003517          	auipc	a0,0x3
    8000642c:	0b050513          	addi	a0,a0,176 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80006430:	fffff097          	auipc	ra,0xfffff
    80006434:	0c0080e7          	jalr	192(ra) # 800054f0 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006438:	00048513          	mv	a0,s1
    8000643c:	00000097          	auipc	ra,0x0
    80006440:	f40080e7          	jalr	-192(ra) # 8000637c <_ZN6Buffer6getCntEv>
    80006444:	02a05c63          	blez	a0,8000647c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006448:	0084b783          	ld	a5,8(s1)
    8000644c:	0104a703          	lw	a4,16(s1)
    80006450:	00271713          	slli	a4,a4,0x2
    80006454:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006458:	0007c503          	lbu	a0,0(a5)
    8000645c:	ffffc097          	auipc	ra,0xffffc
    80006460:	1a0080e7          	jalr	416(ra) # 800025fc <_Z4putcc>
        head = (head + 1) % cap;
    80006464:	0104a783          	lw	a5,16(s1)
    80006468:	0017879b          	addiw	a5,a5,1
    8000646c:	0004a703          	lw	a4,0(s1)
    80006470:	02e7e7bb          	remw	a5,a5,a4
    80006474:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006478:	fc1ff06f          	j	80006438 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000647c:	02100513          	li	a0,33
    80006480:	ffffc097          	auipc	ra,0xffffc
    80006484:	17c080e7          	jalr	380(ra) # 800025fc <_Z4putcc>
    putc('\n');
    80006488:	00a00513          	li	a0,10
    8000648c:	ffffc097          	auipc	ra,0xffffc
    80006490:	170080e7          	jalr	368(ra) # 800025fc <_Z4putcc>
    mem_free(buffer);
    80006494:	0084b503          	ld	a0,8(s1)
    80006498:	ffffc097          	auipc	ra,0xffffc
    8000649c:	eb4080e7          	jalr	-332(ra) # 8000234c <_Z8mem_freePv>
    sem_close(itemAvailable);
    800064a0:	0204b503          	ld	a0,32(s1)
    800064a4:	ffffc097          	auipc	ra,0xffffc
    800064a8:	fd4080e7          	jalr	-44(ra) # 80002478 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    800064ac:	0184b503          	ld	a0,24(s1)
    800064b0:	ffffc097          	auipc	ra,0xffffc
    800064b4:	fc8080e7          	jalr	-56(ra) # 80002478 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    800064b8:	0304b503          	ld	a0,48(s1)
    800064bc:	ffffc097          	auipc	ra,0xffffc
    800064c0:	fbc080e7          	jalr	-68(ra) # 80002478 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    800064c4:	0284b503          	ld	a0,40(s1)
    800064c8:	ffffc097          	auipc	ra,0xffffc
    800064cc:	fb0080e7          	jalr	-80(ra) # 80002478 <_Z9sem_closeP4_sem>
}
    800064d0:	01813083          	ld	ra,24(sp)
    800064d4:	01013403          	ld	s0,16(sp)
    800064d8:	00813483          	ld	s1,8(sp)
    800064dc:	02010113          	addi	sp,sp,32
    800064e0:	00008067          	ret

00000000800064e4 <start>:
    800064e4:	ff010113          	addi	sp,sp,-16
    800064e8:	00813423          	sd	s0,8(sp)
    800064ec:	01010413          	addi	s0,sp,16
    800064f0:	300027f3          	csrr	a5,mstatus
    800064f4:	ffffe737          	lui	a4,0xffffe
    800064f8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffed96f>
    800064fc:	00e7f7b3          	and	a5,a5,a4
    80006500:	00001737          	lui	a4,0x1
    80006504:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006508:	00e7e7b3          	or	a5,a5,a4
    8000650c:	30079073          	csrw	mstatus,a5
    80006510:	00000797          	auipc	a5,0x0
    80006514:	16078793          	addi	a5,a5,352 # 80006670 <system_main>
    80006518:	34179073          	csrw	mepc,a5
    8000651c:	00000793          	li	a5,0
    80006520:	18079073          	csrw	satp,a5
    80006524:	000107b7          	lui	a5,0x10
    80006528:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000652c:	30279073          	csrw	medeleg,a5
    80006530:	30379073          	csrw	mideleg,a5
    80006534:	104027f3          	csrr	a5,sie
    80006538:	2227e793          	ori	a5,a5,546
    8000653c:	10479073          	csrw	sie,a5
    80006540:	fff00793          	li	a5,-1
    80006544:	00a7d793          	srli	a5,a5,0xa
    80006548:	3b079073          	csrw	pmpaddr0,a5
    8000654c:	00f00793          	li	a5,15
    80006550:	3a079073          	csrw	pmpcfg0,a5
    80006554:	f14027f3          	csrr	a5,mhartid
    80006558:	0200c737          	lui	a4,0x200c
    8000655c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006560:	0007869b          	sext.w	a3,a5
    80006564:	00269713          	slli	a4,a3,0x2
    80006568:	000f4637          	lui	a2,0xf4
    8000656c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006570:	00d70733          	add	a4,a4,a3
    80006574:	0037979b          	slliw	a5,a5,0x3
    80006578:	020046b7          	lui	a3,0x2004
    8000657c:	00d787b3          	add	a5,a5,a3
    80006580:	00c585b3          	add	a1,a1,a2
    80006584:	00371693          	slli	a3,a4,0x3
    80006588:	00009717          	auipc	a4,0x9
    8000658c:	6a870713          	addi	a4,a4,1704 # 8000fc30 <timer_scratch>
    80006590:	00b7b023          	sd	a1,0(a5)
    80006594:	00d70733          	add	a4,a4,a3
    80006598:	00f73c23          	sd	a5,24(a4)
    8000659c:	02c73023          	sd	a2,32(a4)
    800065a0:	34071073          	csrw	mscratch,a4
    800065a4:	00000797          	auipc	a5,0x0
    800065a8:	6ec78793          	addi	a5,a5,1772 # 80006c90 <timervec>
    800065ac:	30579073          	csrw	mtvec,a5
    800065b0:	300027f3          	csrr	a5,mstatus
    800065b4:	0087e793          	ori	a5,a5,8
    800065b8:	30079073          	csrw	mstatus,a5
    800065bc:	304027f3          	csrr	a5,mie
    800065c0:	0807e793          	ori	a5,a5,128
    800065c4:	30479073          	csrw	mie,a5
    800065c8:	f14027f3          	csrr	a5,mhartid
    800065cc:	0007879b          	sext.w	a5,a5
    800065d0:	00078213          	mv	tp,a5
    800065d4:	30200073          	mret
    800065d8:	00813403          	ld	s0,8(sp)
    800065dc:	01010113          	addi	sp,sp,16
    800065e0:	00008067          	ret

00000000800065e4 <timerinit>:
    800065e4:	ff010113          	addi	sp,sp,-16
    800065e8:	00813423          	sd	s0,8(sp)
    800065ec:	01010413          	addi	s0,sp,16
    800065f0:	f14027f3          	csrr	a5,mhartid
    800065f4:	0200c737          	lui	a4,0x200c
    800065f8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800065fc:	0007869b          	sext.w	a3,a5
    80006600:	00269713          	slli	a4,a3,0x2
    80006604:	000f4637          	lui	a2,0xf4
    80006608:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000660c:	00d70733          	add	a4,a4,a3
    80006610:	0037979b          	slliw	a5,a5,0x3
    80006614:	020046b7          	lui	a3,0x2004
    80006618:	00d787b3          	add	a5,a5,a3
    8000661c:	00c585b3          	add	a1,a1,a2
    80006620:	00371693          	slli	a3,a4,0x3
    80006624:	00009717          	auipc	a4,0x9
    80006628:	60c70713          	addi	a4,a4,1548 # 8000fc30 <timer_scratch>
    8000662c:	00b7b023          	sd	a1,0(a5)
    80006630:	00d70733          	add	a4,a4,a3
    80006634:	00f73c23          	sd	a5,24(a4)
    80006638:	02c73023          	sd	a2,32(a4)
    8000663c:	34071073          	csrw	mscratch,a4
    80006640:	00000797          	auipc	a5,0x0
    80006644:	65078793          	addi	a5,a5,1616 # 80006c90 <timervec>
    80006648:	30579073          	csrw	mtvec,a5
    8000664c:	300027f3          	csrr	a5,mstatus
    80006650:	0087e793          	ori	a5,a5,8
    80006654:	30079073          	csrw	mstatus,a5
    80006658:	304027f3          	csrr	a5,mie
    8000665c:	0807e793          	ori	a5,a5,128
    80006660:	30479073          	csrw	mie,a5
    80006664:	00813403          	ld	s0,8(sp)
    80006668:	01010113          	addi	sp,sp,16
    8000666c:	00008067          	ret

0000000080006670 <system_main>:
    80006670:	fe010113          	addi	sp,sp,-32
    80006674:	00813823          	sd	s0,16(sp)
    80006678:	00913423          	sd	s1,8(sp)
    8000667c:	00113c23          	sd	ra,24(sp)
    80006680:	02010413          	addi	s0,sp,32
    80006684:	00000097          	auipc	ra,0x0
    80006688:	0c4080e7          	jalr	196(ra) # 80006748 <cpuid>
    8000668c:	00005497          	auipc	s1,0x5
    80006690:	4a448493          	addi	s1,s1,1188 # 8000bb30 <started>
    80006694:	02050263          	beqz	a0,800066b8 <system_main+0x48>
    80006698:	0004a783          	lw	a5,0(s1)
    8000669c:	0007879b          	sext.w	a5,a5
    800066a0:	fe078ce3          	beqz	a5,80006698 <system_main+0x28>
    800066a4:	0ff0000f          	fence
    800066a8:	00003517          	auipc	a0,0x3
    800066ac:	f7050513          	addi	a0,a0,-144 # 80009618 <CONSOLE_STATUS+0x608>
    800066b0:	00001097          	auipc	ra,0x1
    800066b4:	a7c080e7          	jalr	-1412(ra) # 8000712c <panic>
    800066b8:	00001097          	auipc	ra,0x1
    800066bc:	9d0080e7          	jalr	-1584(ra) # 80007088 <consoleinit>
    800066c0:	00001097          	auipc	ra,0x1
    800066c4:	15c080e7          	jalr	348(ra) # 8000781c <printfinit>
    800066c8:	00003517          	auipc	a0,0x3
    800066cc:	03050513          	addi	a0,a0,48 # 800096f8 <CONSOLE_STATUS+0x6e8>
    800066d0:	00001097          	auipc	ra,0x1
    800066d4:	ab8080e7          	jalr	-1352(ra) # 80007188 <__printf>
    800066d8:	00003517          	auipc	a0,0x3
    800066dc:	f1050513          	addi	a0,a0,-240 # 800095e8 <CONSOLE_STATUS+0x5d8>
    800066e0:	00001097          	auipc	ra,0x1
    800066e4:	aa8080e7          	jalr	-1368(ra) # 80007188 <__printf>
    800066e8:	00003517          	auipc	a0,0x3
    800066ec:	01050513          	addi	a0,a0,16 # 800096f8 <CONSOLE_STATUS+0x6e8>
    800066f0:	00001097          	auipc	ra,0x1
    800066f4:	a98080e7          	jalr	-1384(ra) # 80007188 <__printf>
    800066f8:	00001097          	auipc	ra,0x1
    800066fc:	4b0080e7          	jalr	1200(ra) # 80007ba8 <kinit>
    80006700:	00000097          	auipc	ra,0x0
    80006704:	148080e7          	jalr	328(ra) # 80006848 <trapinit>
    80006708:	00000097          	auipc	ra,0x0
    8000670c:	16c080e7          	jalr	364(ra) # 80006874 <trapinithart>
    80006710:	00000097          	auipc	ra,0x0
    80006714:	5c0080e7          	jalr	1472(ra) # 80006cd0 <plicinit>
    80006718:	00000097          	auipc	ra,0x0
    8000671c:	5e0080e7          	jalr	1504(ra) # 80006cf8 <plicinithart>
    80006720:	00000097          	auipc	ra,0x0
    80006724:	078080e7          	jalr	120(ra) # 80006798 <userinit>
    80006728:	0ff0000f          	fence
    8000672c:	00100793          	li	a5,1
    80006730:	00003517          	auipc	a0,0x3
    80006734:	ed050513          	addi	a0,a0,-304 # 80009600 <CONSOLE_STATUS+0x5f0>
    80006738:	00f4a023          	sw	a5,0(s1)
    8000673c:	00001097          	auipc	ra,0x1
    80006740:	a4c080e7          	jalr	-1460(ra) # 80007188 <__printf>
    80006744:	0000006f          	j	80006744 <system_main+0xd4>

0000000080006748 <cpuid>:
    80006748:	ff010113          	addi	sp,sp,-16
    8000674c:	00813423          	sd	s0,8(sp)
    80006750:	01010413          	addi	s0,sp,16
    80006754:	00020513          	mv	a0,tp
    80006758:	00813403          	ld	s0,8(sp)
    8000675c:	0005051b          	sext.w	a0,a0
    80006760:	01010113          	addi	sp,sp,16
    80006764:	00008067          	ret

0000000080006768 <mycpu>:
    80006768:	ff010113          	addi	sp,sp,-16
    8000676c:	00813423          	sd	s0,8(sp)
    80006770:	01010413          	addi	s0,sp,16
    80006774:	00020793          	mv	a5,tp
    80006778:	00813403          	ld	s0,8(sp)
    8000677c:	0007879b          	sext.w	a5,a5
    80006780:	00779793          	slli	a5,a5,0x7
    80006784:	0000a517          	auipc	a0,0xa
    80006788:	4dc50513          	addi	a0,a0,1244 # 80010c60 <cpus>
    8000678c:	00f50533          	add	a0,a0,a5
    80006790:	01010113          	addi	sp,sp,16
    80006794:	00008067          	ret

0000000080006798 <userinit>:
    80006798:	ff010113          	addi	sp,sp,-16
    8000679c:	00813423          	sd	s0,8(sp)
    800067a0:	01010413          	addi	s0,sp,16
    800067a4:	00813403          	ld	s0,8(sp)
    800067a8:	01010113          	addi	sp,sp,16
    800067ac:	ffffd317          	auipc	t1,0xffffd
    800067b0:	3b030067          	jr	944(t1) # 80003b5c <main>

00000000800067b4 <either_copyout>:
    800067b4:	ff010113          	addi	sp,sp,-16
    800067b8:	00813023          	sd	s0,0(sp)
    800067bc:	00113423          	sd	ra,8(sp)
    800067c0:	01010413          	addi	s0,sp,16
    800067c4:	02051663          	bnez	a0,800067f0 <either_copyout+0x3c>
    800067c8:	00058513          	mv	a0,a1
    800067cc:	00060593          	mv	a1,a2
    800067d0:	0006861b          	sext.w	a2,a3
    800067d4:	00002097          	auipc	ra,0x2
    800067d8:	c60080e7          	jalr	-928(ra) # 80008434 <__memmove>
    800067dc:	00813083          	ld	ra,8(sp)
    800067e0:	00013403          	ld	s0,0(sp)
    800067e4:	00000513          	li	a0,0
    800067e8:	01010113          	addi	sp,sp,16
    800067ec:	00008067          	ret
    800067f0:	00003517          	auipc	a0,0x3
    800067f4:	e5050513          	addi	a0,a0,-432 # 80009640 <CONSOLE_STATUS+0x630>
    800067f8:	00001097          	auipc	ra,0x1
    800067fc:	934080e7          	jalr	-1740(ra) # 8000712c <panic>

0000000080006800 <either_copyin>:
    80006800:	ff010113          	addi	sp,sp,-16
    80006804:	00813023          	sd	s0,0(sp)
    80006808:	00113423          	sd	ra,8(sp)
    8000680c:	01010413          	addi	s0,sp,16
    80006810:	02059463          	bnez	a1,80006838 <either_copyin+0x38>
    80006814:	00060593          	mv	a1,a2
    80006818:	0006861b          	sext.w	a2,a3
    8000681c:	00002097          	auipc	ra,0x2
    80006820:	c18080e7          	jalr	-1000(ra) # 80008434 <__memmove>
    80006824:	00813083          	ld	ra,8(sp)
    80006828:	00013403          	ld	s0,0(sp)
    8000682c:	00000513          	li	a0,0
    80006830:	01010113          	addi	sp,sp,16
    80006834:	00008067          	ret
    80006838:	00003517          	auipc	a0,0x3
    8000683c:	e3050513          	addi	a0,a0,-464 # 80009668 <CONSOLE_STATUS+0x658>
    80006840:	00001097          	auipc	ra,0x1
    80006844:	8ec080e7          	jalr	-1812(ra) # 8000712c <panic>

0000000080006848 <trapinit>:
    80006848:	ff010113          	addi	sp,sp,-16
    8000684c:	00813423          	sd	s0,8(sp)
    80006850:	01010413          	addi	s0,sp,16
    80006854:	00813403          	ld	s0,8(sp)
    80006858:	00003597          	auipc	a1,0x3
    8000685c:	e3858593          	addi	a1,a1,-456 # 80009690 <CONSOLE_STATUS+0x680>
    80006860:	0000a517          	auipc	a0,0xa
    80006864:	48050513          	addi	a0,a0,1152 # 80010ce0 <tickslock>
    80006868:	01010113          	addi	sp,sp,16
    8000686c:	00001317          	auipc	t1,0x1
    80006870:	5cc30067          	jr	1484(t1) # 80007e38 <initlock>

0000000080006874 <trapinithart>:
    80006874:	ff010113          	addi	sp,sp,-16
    80006878:	00813423          	sd	s0,8(sp)
    8000687c:	01010413          	addi	s0,sp,16
    80006880:	00000797          	auipc	a5,0x0
    80006884:	30078793          	addi	a5,a5,768 # 80006b80 <kernelvec>
    80006888:	10579073          	csrw	stvec,a5
    8000688c:	00813403          	ld	s0,8(sp)
    80006890:	01010113          	addi	sp,sp,16
    80006894:	00008067          	ret

0000000080006898 <usertrap>:
    80006898:	ff010113          	addi	sp,sp,-16
    8000689c:	00813423          	sd	s0,8(sp)
    800068a0:	01010413          	addi	s0,sp,16
    800068a4:	00813403          	ld	s0,8(sp)
    800068a8:	01010113          	addi	sp,sp,16
    800068ac:	00008067          	ret

00000000800068b0 <usertrapret>:
    800068b0:	ff010113          	addi	sp,sp,-16
    800068b4:	00813423          	sd	s0,8(sp)
    800068b8:	01010413          	addi	s0,sp,16
    800068bc:	00813403          	ld	s0,8(sp)
    800068c0:	01010113          	addi	sp,sp,16
    800068c4:	00008067          	ret

00000000800068c8 <kerneltrap>:
    800068c8:	fe010113          	addi	sp,sp,-32
    800068cc:	00813823          	sd	s0,16(sp)
    800068d0:	00113c23          	sd	ra,24(sp)
    800068d4:	00913423          	sd	s1,8(sp)
    800068d8:	02010413          	addi	s0,sp,32
    800068dc:	142025f3          	csrr	a1,scause
    800068e0:	100027f3          	csrr	a5,sstatus
    800068e4:	0027f793          	andi	a5,a5,2
    800068e8:	10079c63          	bnez	a5,80006a00 <kerneltrap+0x138>
    800068ec:	142027f3          	csrr	a5,scause
    800068f0:	0207ce63          	bltz	a5,8000692c <kerneltrap+0x64>
    800068f4:	00003517          	auipc	a0,0x3
    800068f8:	de450513          	addi	a0,a0,-540 # 800096d8 <CONSOLE_STATUS+0x6c8>
    800068fc:	00001097          	auipc	ra,0x1
    80006900:	88c080e7          	jalr	-1908(ra) # 80007188 <__printf>
    80006904:	141025f3          	csrr	a1,sepc
    80006908:	14302673          	csrr	a2,stval
    8000690c:	00003517          	auipc	a0,0x3
    80006910:	ddc50513          	addi	a0,a0,-548 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80006914:	00001097          	auipc	ra,0x1
    80006918:	874080e7          	jalr	-1932(ra) # 80007188 <__printf>
    8000691c:	00003517          	auipc	a0,0x3
    80006920:	de450513          	addi	a0,a0,-540 # 80009700 <CONSOLE_STATUS+0x6f0>
    80006924:	00001097          	auipc	ra,0x1
    80006928:	808080e7          	jalr	-2040(ra) # 8000712c <panic>
    8000692c:	0ff7f713          	andi	a4,a5,255
    80006930:	00900693          	li	a3,9
    80006934:	04d70063          	beq	a4,a3,80006974 <kerneltrap+0xac>
    80006938:	fff00713          	li	a4,-1
    8000693c:	03f71713          	slli	a4,a4,0x3f
    80006940:	00170713          	addi	a4,a4,1
    80006944:	fae798e3          	bne	a5,a4,800068f4 <kerneltrap+0x2c>
    80006948:	00000097          	auipc	ra,0x0
    8000694c:	e00080e7          	jalr	-512(ra) # 80006748 <cpuid>
    80006950:	06050663          	beqz	a0,800069bc <kerneltrap+0xf4>
    80006954:	144027f3          	csrr	a5,sip
    80006958:	ffd7f793          	andi	a5,a5,-3
    8000695c:	14479073          	csrw	sip,a5
    80006960:	01813083          	ld	ra,24(sp)
    80006964:	01013403          	ld	s0,16(sp)
    80006968:	00813483          	ld	s1,8(sp)
    8000696c:	02010113          	addi	sp,sp,32
    80006970:	00008067          	ret
    80006974:	00000097          	auipc	ra,0x0
    80006978:	3d0080e7          	jalr	976(ra) # 80006d44 <plic_claim>
    8000697c:	00a00793          	li	a5,10
    80006980:	00050493          	mv	s1,a0
    80006984:	06f50863          	beq	a0,a5,800069f4 <kerneltrap+0x12c>
    80006988:	fc050ce3          	beqz	a0,80006960 <kerneltrap+0x98>
    8000698c:	00050593          	mv	a1,a0
    80006990:	00003517          	auipc	a0,0x3
    80006994:	d2850513          	addi	a0,a0,-728 # 800096b8 <CONSOLE_STATUS+0x6a8>
    80006998:	00000097          	auipc	ra,0x0
    8000699c:	7f0080e7          	jalr	2032(ra) # 80007188 <__printf>
    800069a0:	01013403          	ld	s0,16(sp)
    800069a4:	01813083          	ld	ra,24(sp)
    800069a8:	00048513          	mv	a0,s1
    800069ac:	00813483          	ld	s1,8(sp)
    800069b0:	02010113          	addi	sp,sp,32
    800069b4:	00000317          	auipc	t1,0x0
    800069b8:	3c830067          	jr	968(t1) # 80006d7c <plic_complete>
    800069bc:	0000a517          	auipc	a0,0xa
    800069c0:	32450513          	addi	a0,a0,804 # 80010ce0 <tickslock>
    800069c4:	00001097          	auipc	ra,0x1
    800069c8:	498080e7          	jalr	1176(ra) # 80007e5c <acquire>
    800069cc:	00005717          	auipc	a4,0x5
    800069d0:	16870713          	addi	a4,a4,360 # 8000bb34 <ticks>
    800069d4:	00072783          	lw	a5,0(a4)
    800069d8:	0000a517          	auipc	a0,0xa
    800069dc:	30850513          	addi	a0,a0,776 # 80010ce0 <tickslock>
    800069e0:	0017879b          	addiw	a5,a5,1
    800069e4:	00f72023          	sw	a5,0(a4)
    800069e8:	00001097          	auipc	ra,0x1
    800069ec:	540080e7          	jalr	1344(ra) # 80007f28 <release>
    800069f0:	f65ff06f          	j	80006954 <kerneltrap+0x8c>
    800069f4:	00001097          	auipc	ra,0x1
    800069f8:	09c080e7          	jalr	156(ra) # 80007a90 <uartintr>
    800069fc:	fa5ff06f          	j	800069a0 <kerneltrap+0xd8>
    80006a00:	00003517          	auipc	a0,0x3
    80006a04:	c9850513          	addi	a0,a0,-872 # 80009698 <CONSOLE_STATUS+0x688>
    80006a08:	00000097          	auipc	ra,0x0
    80006a0c:	724080e7          	jalr	1828(ra) # 8000712c <panic>

0000000080006a10 <clockintr>:
    80006a10:	fe010113          	addi	sp,sp,-32
    80006a14:	00813823          	sd	s0,16(sp)
    80006a18:	00913423          	sd	s1,8(sp)
    80006a1c:	00113c23          	sd	ra,24(sp)
    80006a20:	02010413          	addi	s0,sp,32
    80006a24:	0000a497          	auipc	s1,0xa
    80006a28:	2bc48493          	addi	s1,s1,700 # 80010ce0 <tickslock>
    80006a2c:	00048513          	mv	a0,s1
    80006a30:	00001097          	auipc	ra,0x1
    80006a34:	42c080e7          	jalr	1068(ra) # 80007e5c <acquire>
    80006a38:	00005717          	auipc	a4,0x5
    80006a3c:	0fc70713          	addi	a4,a4,252 # 8000bb34 <ticks>
    80006a40:	00072783          	lw	a5,0(a4)
    80006a44:	01013403          	ld	s0,16(sp)
    80006a48:	01813083          	ld	ra,24(sp)
    80006a4c:	00048513          	mv	a0,s1
    80006a50:	0017879b          	addiw	a5,a5,1
    80006a54:	00813483          	ld	s1,8(sp)
    80006a58:	00f72023          	sw	a5,0(a4)
    80006a5c:	02010113          	addi	sp,sp,32
    80006a60:	00001317          	auipc	t1,0x1
    80006a64:	4c830067          	jr	1224(t1) # 80007f28 <release>

0000000080006a68 <devintr>:
    80006a68:	142027f3          	csrr	a5,scause
    80006a6c:	00000513          	li	a0,0
    80006a70:	0007c463          	bltz	a5,80006a78 <devintr+0x10>
    80006a74:	00008067          	ret
    80006a78:	fe010113          	addi	sp,sp,-32
    80006a7c:	00813823          	sd	s0,16(sp)
    80006a80:	00113c23          	sd	ra,24(sp)
    80006a84:	00913423          	sd	s1,8(sp)
    80006a88:	02010413          	addi	s0,sp,32
    80006a8c:	0ff7f713          	andi	a4,a5,255
    80006a90:	00900693          	li	a3,9
    80006a94:	04d70c63          	beq	a4,a3,80006aec <devintr+0x84>
    80006a98:	fff00713          	li	a4,-1
    80006a9c:	03f71713          	slli	a4,a4,0x3f
    80006aa0:	00170713          	addi	a4,a4,1
    80006aa4:	00e78c63          	beq	a5,a4,80006abc <devintr+0x54>
    80006aa8:	01813083          	ld	ra,24(sp)
    80006aac:	01013403          	ld	s0,16(sp)
    80006ab0:	00813483          	ld	s1,8(sp)
    80006ab4:	02010113          	addi	sp,sp,32
    80006ab8:	00008067          	ret
    80006abc:	00000097          	auipc	ra,0x0
    80006ac0:	c8c080e7          	jalr	-884(ra) # 80006748 <cpuid>
    80006ac4:	06050663          	beqz	a0,80006b30 <devintr+0xc8>
    80006ac8:	144027f3          	csrr	a5,sip
    80006acc:	ffd7f793          	andi	a5,a5,-3
    80006ad0:	14479073          	csrw	sip,a5
    80006ad4:	01813083          	ld	ra,24(sp)
    80006ad8:	01013403          	ld	s0,16(sp)
    80006adc:	00813483          	ld	s1,8(sp)
    80006ae0:	00200513          	li	a0,2
    80006ae4:	02010113          	addi	sp,sp,32
    80006ae8:	00008067          	ret
    80006aec:	00000097          	auipc	ra,0x0
    80006af0:	258080e7          	jalr	600(ra) # 80006d44 <plic_claim>
    80006af4:	00a00793          	li	a5,10
    80006af8:	00050493          	mv	s1,a0
    80006afc:	06f50663          	beq	a0,a5,80006b68 <devintr+0x100>
    80006b00:	00100513          	li	a0,1
    80006b04:	fa0482e3          	beqz	s1,80006aa8 <devintr+0x40>
    80006b08:	00048593          	mv	a1,s1
    80006b0c:	00003517          	auipc	a0,0x3
    80006b10:	bac50513          	addi	a0,a0,-1108 # 800096b8 <CONSOLE_STATUS+0x6a8>
    80006b14:	00000097          	auipc	ra,0x0
    80006b18:	674080e7          	jalr	1652(ra) # 80007188 <__printf>
    80006b1c:	00048513          	mv	a0,s1
    80006b20:	00000097          	auipc	ra,0x0
    80006b24:	25c080e7          	jalr	604(ra) # 80006d7c <plic_complete>
    80006b28:	00100513          	li	a0,1
    80006b2c:	f7dff06f          	j	80006aa8 <devintr+0x40>
    80006b30:	0000a517          	auipc	a0,0xa
    80006b34:	1b050513          	addi	a0,a0,432 # 80010ce0 <tickslock>
    80006b38:	00001097          	auipc	ra,0x1
    80006b3c:	324080e7          	jalr	804(ra) # 80007e5c <acquire>
    80006b40:	00005717          	auipc	a4,0x5
    80006b44:	ff470713          	addi	a4,a4,-12 # 8000bb34 <ticks>
    80006b48:	00072783          	lw	a5,0(a4)
    80006b4c:	0000a517          	auipc	a0,0xa
    80006b50:	19450513          	addi	a0,a0,404 # 80010ce0 <tickslock>
    80006b54:	0017879b          	addiw	a5,a5,1
    80006b58:	00f72023          	sw	a5,0(a4)
    80006b5c:	00001097          	auipc	ra,0x1
    80006b60:	3cc080e7          	jalr	972(ra) # 80007f28 <release>
    80006b64:	f65ff06f          	j	80006ac8 <devintr+0x60>
    80006b68:	00001097          	auipc	ra,0x1
    80006b6c:	f28080e7          	jalr	-216(ra) # 80007a90 <uartintr>
    80006b70:	fadff06f          	j	80006b1c <devintr+0xb4>
	...

0000000080006b80 <kernelvec>:
    80006b80:	f0010113          	addi	sp,sp,-256
    80006b84:	00113023          	sd	ra,0(sp)
    80006b88:	00213423          	sd	sp,8(sp)
    80006b8c:	00313823          	sd	gp,16(sp)
    80006b90:	00413c23          	sd	tp,24(sp)
    80006b94:	02513023          	sd	t0,32(sp)
    80006b98:	02613423          	sd	t1,40(sp)
    80006b9c:	02713823          	sd	t2,48(sp)
    80006ba0:	02813c23          	sd	s0,56(sp)
    80006ba4:	04913023          	sd	s1,64(sp)
    80006ba8:	04a13423          	sd	a0,72(sp)
    80006bac:	04b13823          	sd	a1,80(sp)
    80006bb0:	04c13c23          	sd	a2,88(sp)
    80006bb4:	06d13023          	sd	a3,96(sp)
    80006bb8:	06e13423          	sd	a4,104(sp)
    80006bbc:	06f13823          	sd	a5,112(sp)
    80006bc0:	07013c23          	sd	a6,120(sp)
    80006bc4:	09113023          	sd	a7,128(sp)
    80006bc8:	09213423          	sd	s2,136(sp)
    80006bcc:	09313823          	sd	s3,144(sp)
    80006bd0:	09413c23          	sd	s4,152(sp)
    80006bd4:	0b513023          	sd	s5,160(sp)
    80006bd8:	0b613423          	sd	s6,168(sp)
    80006bdc:	0b713823          	sd	s7,176(sp)
    80006be0:	0b813c23          	sd	s8,184(sp)
    80006be4:	0d913023          	sd	s9,192(sp)
    80006be8:	0da13423          	sd	s10,200(sp)
    80006bec:	0db13823          	sd	s11,208(sp)
    80006bf0:	0dc13c23          	sd	t3,216(sp)
    80006bf4:	0fd13023          	sd	t4,224(sp)
    80006bf8:	0fe13423          	sd	t5,232(sp)
    80006bfc:	0ff13823          	sd	t6,240(sp)
    80006c00:	cc9ff0ef          	jal	ra,800068c8 <kerneltrap>
    80006c04:	00013083          	ld	ra,0(sp)
    80006c08:	00813103          	ld	sp,8(sp)
    80006c0c:	01013183          	ld	gp,16(sp)
    80006c10:	02013283          	ld	t0,32(sp)
    80006c14:	02813303          	ld	t1,40(sp)
    80006c18:	03013383          	ld	t2,48(sp)
    80006c1c:	03813403          	ld	s0,56(sp)
    80006c20:	04013483          	ld	s1,64(sp)
    80006c24:	04813503          	ld	a0,72(sp)
    80006c28:	05013583          	ld	a1,80(sp)
    80006c2c:	05813603          	ld	a2,88(sp)
    80006c30:	06013683          	ld	a3,96(sp)
    80006c34:	06813703          	ld	a4,104(sp)
    80006c38:	07013783          	ld	a5,112(sp)
    80006c3c:	07813803          	ld	a6,120(sp)
    80006c40:	08013883          	ld	a7,128(sp)
    80006c44:	08813903          	ld	s2,136(sp)
    80006c48:	09013983          	ld	s3,144(sp)
    80006c4c:	09813a03          	ld	s4,152(sp)
    80006c50:	0a013a83          	ld	s5,160(sp)
    80006c54:	0a813b03          	ld	s6,168(sp)
    80006c58:	0b013b83          	ld	s7,176(sp)
    80006c5c:	0b813c03          	ld	s8,184(sp)
    80006c60:	0c013c83          	ld	s9,192(sp)
    80006c64:	0c813d03          	ld	s10,200(sp)
    80006c68:	0d013d83          	ld	s11,208(sp)
    80006c6c:	0d813e03          	ld	t3,216(sp)
    80006c70:	0e013e83          	ld	t4,224(sp)
    80006c74:	0e813f03          	ld	t5,232(sp)
    80006c78:	0f013f83          	ld	t6,240(sp)
    80006c7c:	10010113          	addi	sp,sp,256
    80006c80:	10200073          	sret
    80006c84:	00000013          	nop
    80006c88:	00000013          	nop
    80006c8c:	00000013          	nop

0000000080006c90 <timervec>:
    80006c90:	34051573          	csrrw	a0,mscratch,a0
    80006c94:	00b53023          	sd	a1,0(a0)
    80006c98:	00c53423          	sd	a2,8(a0)
    80006c9c:	00d53823          	sd	a3,16(a0)
    80006ca0:	01853583          	ld	a1,24(a0)
    80006ca4:	02053603          	ld	a2,32(a0)
    80006ca8:	0005b683          	ld	a3,0(a1)
    80006cac:	00c686b3          	add	a3,a3,a2
    80006cb0:	00d5b023          	sd	a3,0(a1)
    80006cb4:	00200593          	li	a1,2
    80006cb8:	14459073          	csrw	sip,a1
    80006cbc:	01053683          	ld	a3,16(a0)
    80006cc0:	00853603          	ld	a2,8(a0)
    80006cc4:	00053583          	ld	a1,0(a0)
    80006cc8:	34051573          	csrrw	a0,mscratch,a0
    80006ccc:	30200073          	mret

0000000080006cd0 <plicinit>:
    80006cd0:	ff010113          	addi	sp,sp,-16
    80006cd4:	00813423          	sd	s0,8(sp)
    80006cd8:	01010413          	addi	s0,sp,16
    80006cdc:	00813403          	ld	s0,8(sp)
    80006ce0:	0c0007b7          	lui	a5,0xc000
    80006ce4:	00100713          	li	a4,1
    80006ce8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006cec:	00e7a223          	sw	a4,4(a5)
    80006cf0:	01010113          	addi	sp,sp,16
    80006cf4:	00008067          	ret

0000000080006cf8 <plicinithart>:
    80006cf8:	ff010113          	addi	sp,sp,-16
    80006cfc:	00813023          	sd	s0,0(sp)
    80006d00:	00113423          	sd	ra,8(sp)
    80006d04:	01010413          	addi	s0,sp,16
    80006d08:	00000097          	auipc	ra,0x0
    80006d0c:	a40080e7          	jalr	-1472(ra) # 80006748 <cpuid>
    80006d10:	0085171b          	slliw	a4,a0,0x8
    80006d14:	0c0027b7          	lui	a5,0xc002
    80006d18:	00e787b3          	add	a5,a5,a4
    80006d1c:	40200713          	li	a4,1026
    80006d20:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006d24:	00813083          	ld	ra,8(sp)
    80006d28:	00013403          	ld	s0,0(sp)
    80006d2c:	00d5151b          	slliw	a0,a0,0xd
    80006d30:	0c2017b7          	lui	a5,0xc201
    80006d34:	00a78533          	add	a0,a5,a0
    80006d38:	00052023          	sw	zero,0(a0)
    80006d3c:	01010113          	addi	sp,sp,16
    80006d40:	00008067          	ret

0000000080006d44 <plic_claim>:
    80006d44:	ff010113          	addi	sp,sp,-16
    80006d48:	00813023          	sd	s0,0(sp)
    80006d4c:	00113423          	sd	ra,8(sp)
    80006d50:	01010413          	addi	s0,sp,16
    80006d54:	00000097          	auipc	ra,0x0
    80006d58:	9f4080e7          	jalr	-1548(ra) # 80006748 <cpuid>
    80006d5c:	00813083          	ld	ra,8(sp)
    80006d60:	00013403          	ld	s0,0(sp)
    80006d64:	00d5151b          	slliw	a0,a0,0xd
    80006d68:	0c2017b7          	lui	a5,0xc201
    80006d6c:	00a78533          	add	a0,a5,a0
    80006d70:	00452503          	lw	a0,4(a0)
    80006d74:	01010113          	addi	sp,sp,16
    80006d78:	00008067          	ret

0000000080006d7c <plic_complete>:
    80006d7c:	fe010113          	addi	sp,sp,-32
    80006d80:	00813823          	sd	s0,16(sp)
    80006d84:	00913423          	sd	s1,8(sp)
    80006d88:	00113c23          	sd	ra,24(sp)
    80006d8c:	02010413          	addi	s0,sp,32
    80006d90:	00050493          	mv	s1,a0
    80006d94:	00000097          	auipc	ra,0x0
    80006d98:	9b4080e7          	jalr	-1612(ra) # 80006748 <cpuid>
    80006d9c:	01813083          	ld	ra,24(sp)
    80006da0:	01013403          	ld	s0,16(sp)
    80006da4:	00d5179b          	slliw	a5,a0,0xd
    80006da8:	0c201737          	lui	a4,0xc201
    80006dac:	00f707b3          	add	a5,a4,a5
    80006db0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006db4:	00813483          	ld	s1,8(sp)
    80006db8:	02010113          	addi	sp,sp,32
    80006dbc:	00008067          	ret

0000000080006dc0 <consolewrite>:
    80006dc0:	fb010113          	addi	sp,sp,-80
    80006dc4:	04813023          	sd	s0,64(sp)
    80006dc8:	04113423          	sd	ra,72(sp)
    80006dcc:	02913c23          	sd	s1,56(sp)
    80006dd0:	03213823          	sd	s2,48(sp)
    80006dd4:	03313423          	sd	s3,40(sp)
    80006dd8:	03413023          	sd	s4,32(sp)
    80006ddc:	01513c23          	sd	s5,24(sp)
    80006de0:	05010413          	addi	s0,sp,80
    80006de4:	06c05c63          	blez	a2,80006e5c <consolewrite+0x9c>
    80006de8:	00060993          	mv	s3,a2
    80006dec:	00050a13          	mv	s4,a0
    80006df0:	00058493          	mv	s1,a1
    80006df4:	00000913          	li	s2,0
    80006df8:	fff00a93          	li	s5,-1
    80006dfc:	01c0006f          	j	80006e18 <consolewrite+0x58>
    80006e00:	fbf44503          	lbu	a0,-65(s0)
    80006e04:	0019091b          	addiw	s2,s2,1
    80006e08:	00148493          	addi	s1,s1,1
    80006e0c:	00001097          	auipc	ra,0x1
    80006e10:	a9c080e7          	jalr	-1380(ra) # 800078a8 <uartputc>
    80006e14:	03298063          	beq	s3,s2,80006e34 <consolewrite+0x74>
    80006e18:	00048613          	mv	a2,s1
    80006e1c:	00100693          	li	a3,1
    80006e20:	000a0593          	mv	a1,s4
    80006e24:	fbf40513          	addi	a0,s0,-65
    80006e28:	00000097          	auipc	ra,0x0
    80006e2c:	9d8080e7          	jalr	-1576(ra) # 80006800 <either_copyin>
    80006e30:	fd5518e3          	bne	a0,s5,80006e00 <consolewrite+0x40>
    80006e34:	04813083          	ld	ra,72(sp)
    80006e38:	04013403          	ld	s0,64(sp)
    80006e3c:	03813483          	ld	s1,56(sp)
    80006e40:	02813983          	ld	s3,40(sp)
    80006e44:	02013a03          	ld	s4,32(sp)
    80006e48:	01813a83          	ld	s5,24(sp)
    80006e4c:	00090513          	mv	a0,s2
    80006e50:	03013903          	ld	s2,48(sp)
    80006e54:	05010113          	addi	sp,sp,80
    80006e58:	00008067          	ret
    80006e5c:	00000913          	li	s2,0
    80006e60:	fd5ff06f          	j	80006e34 <consolewrite+0x74>

0000000080006e64 <consoleread>:
    80006e64:	f9010113          	addi	sp,sp,-112
    80006e68:	06813023          	sd	s0,96(sp)
    80006e6c:	04913c23          	sd	s1,88(sp)
    80006e70:	05213823          	sd	s2,80(sp)
    80006e74:	05313423          	sd	s3,72(sp)
    80006e78:	05413023          	sd	s4,64(sp)
    80006e7c:	03513c23          	sd	s5,56(sp)
    80006e80:	03613823          	sd	s6,48(sp)
    80006e84:	03713423          	sd	s7,40(sp)
    80006e88:	03813023          	sd	s8,32(sp)
    80006e8c:	06113423          	sd	ra,104(sp)
    80006e90:	01913c23          	sd	s9,24(sp)
    80006e94:	07010413          	addi	s0,sp,112
    80006e98:	00060b93          	mv	s7,a2
    80006e9c:	00050913          	mv	s2,a0
    80006ea0:	00058c13          	mv	s8,a1
    80006ea4:	00060b1b          	sext.w	s6,a2
    80006ea8:	0000a497          	auipc	s1,0xa
    80006eac:	e6048493          	addi	s1,s1,-416 # 80010d08 <cons>
    80006eb0:	00400993          	li	s3,4
    80006eb4:	fff00a13          	li	s4,-1
    80006eb8:	00a00a93          	li	s5,10
    80006ebc:	05705e63          	blez	s7,80006f18 <consoleread+0xb4>
    80006ec0:	09c4a703          	lw	a4,156(s1)
    80006ec4:	0984a783          	lw	a5,152(s1)
    80006ec8:	0007071b          	sext.w	a4,a4
    80006ecc:	08e78463          	beq	a5,a4,80006f54 <consoleread+0xf0>
    80006ed0:	07f7f713          	andi	a4,a5,127
    80006ed4:	00e48733          	add	a4,s1,a4
    80006ed8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006edc:	0017869b          	addiw	a3,a5,1
    80006ee0:	08d4ac23          	sw	a3,152(s1)
    80006ee4:	00070c9b          	sext.w	s9,a4
    80006ee8:	0b370663          	beq	a4,s3,80006f94 <consoleread+0x130>
    80006eec:	00100693          	li	a3,1
    80006ef0:	f9f40613          	addi	a2,s0,-97
    80006ef4:	000c0593          	mv	a1,s8
    80006ef8:	00090513          	mv	a0,s2
    80006efc:	f8e40fa3          	sb	a4,-97(s0)
    80006f00:	00000097          	auipc	ra,0x0
    80006f04:	8b4080e7          	jalr	-1868(ra) # 800067b4 <either_copyout>
    80006f08:	01450863          	beq	a0,s4,80006f18 <consoleread+0xb4>
    80006f0c:	001c0c13          	addi	s8,s8,1
    80006f10:	fffb8b9b          	addiw	s7,s7,-1
    80006f14:	fb5c94e3          	bne	s9,s5,80006ebc <consoleread+0x58>
    80006f18:	000b851b          	sext.w	a0,s7
    80006f1c:	06813083          	ld	ra,104(sp)
    80006f20:	06013403          	ld	s0,96(sp)
    80006f24:	05813483          	ld	s1,88(sp)
    80006f28:	05013903          	ld	s2,80(sp)
    80006f2c:	04813983          	ld	s3,72(sp)
    80006f30:	04013a03          	ld	s4,64(sp)
    80006f34:	03813a83          	ld	s5,56(sp)
    80006f38:	02813b83          	ld	s7,40(sp)
    80006f3c:	02013c03          	ld	s8,32(sp)
    80006f40:	01813c83          	ld	s9,24(sp)
    80006f44:	40ab053b          	subw	a0,s6,a0
    80006f48:	03013b03          	ld	s6,48(sp)
    80006f4c:	07010113          	addi	sp,sp,112
    80006f50:	00008067          	ret
    80006f54:	00001097          	auipc	ra,0x1
    80006f58:	1d8080e7          	jalr	472(ra) # 8000812c <push_on>
    80006f5c:	0984a703          	lw	a4,152(s1)
    80006f60:	09c4a783          	lw	a5,156(s1)
    80006f64:	0007879b          	sext.w	a5,a5
    80006f68:	fef70ce3          	beq	a4,a5,80006f60 <consoleread+0xfc>
    80006f6c:	00001097          	auipc	ra,0x1
    80006f70:	234080e7          	jalr	564(ra) # 800081a0 <pop_on>
    80006f74:	0984a783          	lw	a5,152(s1)
    80006f78:	07f7f713          	andi	a4,a5,127
    80006f7c:	00e48733          	add	a4,s1,a4
    80006f80:	01874703          	lbu	a4,24(a4)
    80006f84:	0017869b          	addiw	a3,a5,1
    80006f88:	08d4ac23          	sw	a3,152(s1)
    80006f8c:	00070c9b          	sext.w	s9,a4
    80006f90:	f5371ee3          	bne	a4,s3,80006eec <consoleread+0x88>
    80006f94:	000b851b          	sext.w	a0,s7
    80006f98:	f96bf2e3          	bgeu	s7,s6,80006f1c <consoleread+0xb8>
    80006f9c:	08f4ac23          	sw	a5,152(s1)
    80006fa0:	f7dff06f          	j	80006f1c <consoleread+0xb8>

0000000080006fa4 <consputc>:
    80006fa4:	10000793          	li	a5,256
    80006fa8:	00f50663          	beq	a0,a5,80006fb4 <consputc+0x10>
    80006fac:	00001317          	auipc	t1,0x1
    80006fb0:	9f430067          	jr	-1548(t1) # 800079a0 <uartputc_sync>
    80006fb4:	ff010113          	addi	sp,sp,-16
    80006fb8:	00113423          	sd	ra,8(sp)
    80006fbc:	00813023          	sd	s0,0(sp)
    80006fc0:	01010413          	addi	s0,sp,16
    80006fc4:	00800513          	li	a0,8
    80006fc8:	00001097          	auipc	ra,0x1
    80006fcc:	9d8080e7          	jalr	-1576(ra) # 800079a0 <uartputc_sync>
    80006fd0:	02000513          	li	a0,32
    80006fd4:	00001097          	auipc	ra,0x1
    80006fd8:	9cc080e7          	jalr	-1588(ra) # 800079a0 <uartputc_sync>
    80006fdc:	00013403          	ld	s0,0(sp)
    80006fe0:	00813083          	ld	ra,8(sp)
    80006fe4:	00800513          	li	a0,8
    80006fe8:	01010113          	addi	sp,sp,16
    80006fec:	00001317          	auipc	t1,0x1
    80006ff0:	9b430067          	jr	-1612(t1) # 800079a0 <uartputc_sync>

0000000080006ff4 <consoleintr>:
    80006ff4:	fe010113          	addi	sp,sp,-32
    80006ff8:	00813823          	sd	s0,16(sp)
    80006ffc:	00913423          	sd	s1,8(sp)
    80007000:	01213023          	sd	s2,0(sp)
    80007004:	00113c23          	sd	ra,24(sp)
    80007008:	02010413          	addi	s0,sp,32
    8000700c:	0000a917          	auipc	s2,0xa
    80007010:	cfc90913          	addi	s2,s2,-772 # 80010d08 <cons>
    80007014:	00050493          	mv	s1,a0
    80007018:	00090513          	mv	a0,s2
    8000701c:	00001097          	auipc	ra,0x1
    80007020:	e40080e7          	jalr	-448(ra) # 80007e5c <acquire>
    80007024:	02048c63          	beqz	s1,8000705c <consoleintr+0x68>
    80007028:	0a092783          	lw	a5,160(s2)
    8000702c:	09892703          	lw	a4,152(s2)
    80007030:	07f00693          	li	a3,127
    80007034:	40e7873b          	subw	a4,a5,a4
    80007038:	02e6e263          	bltu	a3,a4,8000705c <consoleintr+0x68>
    8000703c:	00d00713          	li	a4,13
    80007040:	04e48063          	beq	s1,a4,80007080 <consoleintr+0x8c>
    80007044:	07f7f713          	andi	a4,a5,127
    80007048:	00e90733          	add	a4,s2,a4
    8000704c:	0017879b          	addiw	a5,a5,1
    80007050:	0af92023          	sw	a5,160(s2)
    80007054:	00970c23          	sb	s1,24(a4)
    80007058:	08f92e23          	sw	a5,156(s2)
    8000705c:	01013403          	ld	s0,16(sp)
    80007060:	01813083          	ld	ra,24(sp)
    80007064:	00813483          	ld	s1,8(sp)
    80007068:	00013903          	ld	s2,0(sp)
    8000706c:	0000a517          	auipc	a0,0xa
    80007070:	c9c50513          	addi	a0,a0,-868 # 80010d08 <cons>
    80007074:	02010113          	addi	sp,sp,32
    80007078:	00001317          	auipc	t1,0x1
    8000707c:	eb030067          	jr	-336(t1) # 80007f28 <release>
    80007080:	00a00493          	li	s1,10
    80007084:	fc1ff06f          	j	80007044 <consoleintr+0x50>

0000000080007088 <consoleinit>:
    80007088:	fe010113          	addi	sp,sp,-32
    8000708c:	00113c23          	sd	ra,24(sp)
    80007090:	00813823          	sd	s0,16(sp)
    80007094:	00913423          	sd	s1,8(sp)
    80007098:	02010413          	addi	s0,sp,32
    8000709c:	0000a497          	auipc	s1,0xa
    800070a0:	c6c48493          	addi	s1,s1,-916 # 80010d08 <cons>
    800070a4:	00048513          	mv	a0,s1
    800070a8:	00002597          	auipc	a1,0x2
    800070ac:	66858593          	addi	a1,a1,1640 # 80009710 <CONSOLE_STATUS+0x700>
    800070b0:	00001097          	auipc	ra,0x1
    800070b4:	d88080e7          	jalr	-632(ra) # 80007e38 <initlock>
    800070b8:	00000097          	auipc	ra,0x0
    800070bc:	7ac080e7          	jalr	1964(ra) # 80007864 <uartinit>
    800070c0:	01813083          	ld	ra,24(sp)
    800070c4:	01013403          	ld	s0,16(sp)
    800070c8:	00000797          	auipc	a5,0x0
    800070cc:	d9c78793          	addi	a5,a5,-612 # 80006e64 <consoleread>
    800070d0:	0af4bc23          	sd	a5,184(s1)
    800070d4:	00000797          	auipc	a5,0x0
    800070d8:	cec78793          	addi	a5,a5,-788 # 80006dc0 <consolewrite>
    800070dc:	0cf4b023          	sd	a5,192(s1)
    800070e0:	00813483          	ld	s1,8(sp)
    800070e4:	02010113          	addi	sp,sp,32
    800070e8:	00008067          	ret

00000000800070ec <console_read>:
    800070ec:	ff010113          	addi	sp,sp,-16
    800070f0:	00813423          	sd	s0,8(sp)
    800070f4:	01010413          	addi	s0,sp,16
    800070f8:	00813403          	ld	s0,8(sp)
    800070fc:	0000a317          	auipc	t1,0xa
    80007100:	cc433303          	ld	t1,-828(t1) # 80010dc0 <devsw+0x10>
    80007104:	01010113          	addi	sp,sp,16
    80007108:	00030067          	jr	t1

000000008000710c <console_write>:
    8000710c:	ff010113          	addi	sp,sp,-16
    80007110:	00813423          	sd	s0,8(sp)
    80007114:	01010413          	addi	s0,sp,16
    80007118:	00813403          	ld	s0,8(sp)
    8000711c:	0000a317          	auipc	t1,0xa
    80007120:	cac33303          	ld	t1,-852(t1) # 80010dc8 <devsw+0x18>
    80007124:	01010113          	addi	sp,sp,16
    80007128:	00030067          	jr	t1

000000008000712c <panic>:
    8000712c:	fe010113          	addi	sp,sp,-32
    80007130:	00113c23          	sd	ra,24(sp)
    80007134:	00813823          	sd	s0,16(sp)
    80007138:	00913423          	sd	s1,8(sp)
    8000713c:	02010413          	addi	s0,sp,32
    80007140:	00050493          	mv	s1,a0
    80007144:	00002517          	auipc	a0,0x2
    80007148:	5d450513          	addi	a0,a0,1492 # 80009718 <CONSOLE_STATUS+0x708>
    8000714c:	0000a797          	auipc	a5,0xa
    80007150:	d007ae23          	sw	zero,-740(a5) # 80010e68 <pr+0x18>
    80007154:	00000097          	auipc	ra,0x0
    80007158:	034080e7          	jalr	52(ra) # 80007188 <__printf>
    8000715c:	00048513          	mv	a0,s1
    80007160:	00000097          	auipc	ra,0x0
    80007164:	028080e7          	jalr	40(ra) # 80007188 <__printf>
    80007168:	00002517          	auipc	a0,0x2
    8000716c:	59050513          	addi	a0,a0,1424 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80007170:	00000097          	auipc	ra,0x0
    80007174:	018080e7          	jalr	24(ra) # 80007188 <__printf>
    80007178:	00100793          	li	a5,1
    8000717c:	00005717          	auipc	a4,0x5
    80007180:	9af72e23          	sw	a5,-1604(a4) # 8000bb38 <panicked>
    80007184:	0000006f          	j	80007184 <panic+0x58>

0000000080007188 <__printf>:
    80007188:	f3010113          	addi	sp,sp,-208
    8000718c:	08813023          	sd	s0,128(sp)
    80007190:	07313423          	sd	s3,104(sp)
    80007194:	09010413          	addi	s0,sp,144
    80007198:	05813023          	sd	s8,64(sp)
    8000719c:	08113423          	sd	ra,136(sp)
    800071a0:	06913c23          	sd	s1,120(sp)
    800071a4:	07213823          	sd	s2,112(sp)
    800071a8:	07413023          	sd	s4,96(sp)
    800071ac:	05513c23          	sd	s5,88(sp)
    800071b0:	05613823          	sd	s6,80(sp)
    800071b4:	05713423          	sd	s7,72(sp)
    800071b8:	03913c23          	sd	s9,56(sp)
    800071bc:	03a13823          	sd	s10,48(sp)
    800071c0:	03b13423          	sd	s11,40(sp)
    800071c4:	0000a317          	auipc	t1,0xa
    800071c8:	c8c30313          	addi	t1,t1,-884 # 80010e50 <pr>
    800071cc:	01832c03          	lw	s8,24(t1)
    800071d0:	00b43423          	sd	a1,8(s0)
    800071d4:	00c43823          	sd	a2,16(s0)
    800071d8:	00d43c23          	sd	a3,24(s0)
    800071dc:	02e43023          	sd	a4,32(s0)
    800071e0:	02f43423          	sd	a5,40(s0)
    800071e4:	03043823          	sd	a6,48(s0)
    800071e8:	03143c23          	sd	a7,56(s0)
    800071ec:	00050993          	mv	s3,a0
    800071f0:	4a0c1663          	bnez	s8,8000769c <__printf+0x514>
    800071f4:	60098c63          	beqz	s3,8000780c <__printf+0x684>
    800071f8:	0009c503          	lbu	a0,0(s3)
    800071fc:	00840793          	addi	a5,s0,8
    80007200:	f6f43c23          	sd	a5,-136(s0)
    80007204:	00000493          	li	s1,0
    80007208:	22050063          	beqz	a0,80007428 <__printf+0x2a0>
    8000720c:	00002a37          	lui	s4,0x2
    80007210:	00018ab7          	lui	s5,0x18
    80007214:	000f4b37          	lui	s6,0xf4
    80007218:	00989bb7          	lui	s7,0x989
    8000721c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007220:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007224:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007228:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000722c:	00148c9b          	addiw	s9,s1,1
    80007230:	02500793          	li	a5,37
    80007234:	01998933          	add	s2,s3,s9
    80007238:	38f51263          	bne	a0,a5,800075bc <__printf+0x434>
    8000723c:	00094783          	lbu	a5,0(s2)
    80007240:	00078c9b          	sext.w	s9,a5
    80007244:	1e078263          	beqz	a5,80007428 <__printf+0x2a0>
    80007248:	0024849b          	addiw	s1,s1,2
    8000724c:	07000713          	li	a4,112
    80007250:	00998933          	add	s2,s3,s1
    80007254:	38e78a63          	beq	a5,a4,800075e8 <__printf+0x460>
    80007258:	20f76863          	bltu	a4,a5,80007468 <__printf+0x2e0>
    8000725c:	42a78863          	beq	a5,a0,8000768c <__printf+0x504>
    80007260:	06400713          	li	a4,100
    80007264:	40e79663          	bne	a5,a4,80007670 <__printf+0x4e8>
    80007268:	f7843783          	ld	a5,-136(s0)
    8000726c:	0007a603          	lw	a2,0(a5)
    80007270:	00878793          	addi	a5,a5,8
    80007274:	f6f43c23          	sd	a5,-136(s0)
    80007278:	42064a63          	bltz	a2,800076ac <__printf+0x524>
    8000727c:	00a00713          	li	a4,10
    80007280:	02e677bb          	remuw	a5,a2,a4
    80007284:	00002d97          	auipc	s11,0x2
    80007288:	4bcd8d93          	addi	s11,s11,1212 # 80009740 <digits>
    8000728c:	00900593          	li	a1,9
    80007290:	0006051b          	sext.w	a0,a2
    80007294:	00000c93          	li	s9,0
    80007298:	02079793          	slli	a5,a5,0x20
    8000729c:	0207d793          	srli	a5,a5,0x20
    800072a0:	00fd87b3          	add	a5,s11,a5
    800072a4:	0007c783          	lbu	a5,0(a5)
    800072a8:	02e656bb          	divuw	a3,a2,a4
    800072ac:	f8f40023          	sb	a5,-128(s0)
    800072b0:	14c5d863          	bge	a1,a2,80007400 <__printf+0x278>
    800072b4:	06300593          	li	a1,99
    800072b8:	00100c93          	li	s9,1
    800072bc:	02e6f7bb          	remuw	a5,a3,a4
    800072c0:	02079793          	slli	a5,a5,0x20
    800072c4:	0207d793          	srli	a5,a5,0x20
    800072c8:	00fd87b3          	add	a5,s11,a5
    800072cc:	0007c783          	lbu	a5,0(a5)
    800072d0:	02e6d73b          	divuw	a4,a3,a4
    800072d4:	f8f400a3          	sb	a5,-127(s0)
    800072d8:	12a5f463          	bgeu	a1,a0,80007400 <__printf+0x278>
    800072dc:	00a00693          	li	a3,10
    800072e0:	00900593          	li	a1,9
    800072e4:	02d777bb          	remuw	a5,a4,a3
    800072e8:	02079793          	slli	a5,a5,0x20
    800072ec:	0207d793          	srli	a5,a5,0x20
    800072f0:	00fd87b3          	add	a5,s11,a5
    800072f4:	0007c503          	lbu	a0,0(a5)
    800072f8:	02d757bb          	divuw	a5,a4,a3
    800072fc:	f8a40123          	sb	a0,-126(s0)
    80007300:	48e5f263          	bgeu	a1,a4,80007784 <__printf+0x5fc>
    80007304:	06300513          	li	a0,99
    80007308:	02d7f5bb          	remuw	a1,a5,a3
    8000730c:	02059593          	slli	a1,a1,0x20
    80007310:	0205d593          	srli	a1,a1,0x20
    80007314:	00bd85b3          	add	a1,s11,a1
    80007318:	0005c583          	lbu	a1,0(a1)
    8000731c:	02d7d7bb          	divuw	a5,a5,a3
    80007320:	f8b401a3          	sb	a1,-125(s0)
    80007324:	48e57263          	bgeu	a0,a4,800077a8 <__printf+0x620>
    80007328:	3e700513          	li	a0,999
    8000732c:	02d7f5bb          	remuw	a1,a5,a3
    80007330:	02059593          	slli	a1,a1,0x20
    80007334:	0205d593          	srli	a1,a1,0x20
    80007338:	00bd85b3          	add	a1,s11,a1
    8000733c:	0005c583          	lbu	a1,0(a1)
    80007340:	02d7d7bb          	divuw	a5,a5,a3
    80007344:	f8b40223          	sb	a1,-124(s0)
    80007348:	46e57663          	bgeu	a0,a4,800077b4 <__printf+0x62c>
    8000734c:	02d7f5bb          	remuw	a1,a5,a3
    80007350:	02059593          	slli	a1,a1,0x20
    80007354:	0205d593          	srli	a1,a1,0x20
    80007358:	00bd85b3          	add	a1,s11,a1
    8000735c:	0005c583          	lbu	a1,0(a1)
    80007360:	02d7d7bb          	divuw	a5,a5,a3
    80007364:	f8b402a3          	sb	a1,-123(s0)
    80007368:	46ea7863          	bgeu	s4,a4,800077d8 <__printf+0x650>
    8000736c:	02d7f5bb          	remuw	a1,a5,a3
    80007370:	02059593          	slli	a1,a1,0x20
    80007374:	0205d593          	srli	a1,a1,0x20
    80007378:	00bd85b3          	add	a1,s11,a1
    8000737c:	0005c583          	lbu	a1,0(a1)
    80007380:	02d7d7bb          	divuw	a5,a5,a3
    80007384:	f8b40323          	sb	a1,-122(s0)
    80007388:	3eeaf863          	bgeu	s5,a4,80007778 <__printf+0x5f0>
    8000738c:	02d7f5bb          	remuw	a1,a5,a3
    80007390:	02059593          	slli	a1,a1,0x20
    80007394:	0205d593          	srli	a1,a1,0x20
    80007398:	00bd85b3          	add	a1,s11,a1
    8000739c:	0005c583          	lbu	a1,0(a1)
    800073a0:	02d7d7bb          	divuw	a5,a5,a3
    800073a4:	f8b403a3          	sb	a1,-121(s0)
    800073a8:	42eb7e63          	bgeu	s6,a4,800077e4 <__printf+0x65c>
    800073ac:	02d7f5bb          	remuw	a1,a5,a3
    800073b0:	02059593          	slli	a1,a1,0x20
    800073b4:	0205d593          	srli	a1,a1,0x20
    800073b8:	00bd85b3          	add	a1,s11,a1
    800073bc:	0005c583          	lbu	a1,0(a1)
    800073c0:	02d7d7bb          	divuw	a5,a5,a3
    800073c4:	f8b40423          	sb	a1,-120(s0)
    800073c8:	42ebfc63          	bgeu	s7,a4,80007800 <__printf+0x678>
    800073cc:	02079793          	slli	a5,a5,0x20
    800073d0:	0207d793          	srli	a5,a5,0x20
    800073d4:	00fd8db3          	add	s11,s11,a5
    800073d8:	000dc703          	lbu	a4,0(s11)
    800073dc:	00a00793          	li	a5,10
    800073e0:	00900c93          	li	s9,9
    800073e4:	f8e404a3          	sb	a4,-119(s0)
    800073e8:	00065c63          	bgez	a2,80007400 <__printf+0x278>
    800073ec:	f9040713          	addi	a4,s0,-112
    800073f0:	00f70733          	add	a4,a4,a5
    800073f4:	02d00693          	li	a3,45
    800073f8:	fed70823          	sb	a3,-16(a4)
    800073fc:	00078c93          	mv	s9,a5
    80007400:	f8040793          	addi	a5,s0,-128
    80007404:	01978cb3          	add	s9,a5,s9
    80007408:	f7f40d13          	addi	s10,s0,-129
    8000740c:	000cc503          	lbu	a0,0(s9)
    80007410:	fffc8c93          	addi	s9,s9,-1
    80007414:	00000097          	auipc	ra,0x0
    80007418:	b90080e7          	jalr	-1136(ra) # 80006fa4 <consputc>
    8000741c:	ffac98e3          	bne	s9,s10,8000740c <__printf+0x284>
    80007420:	00094503          	lbu	a0,0(s2)
    80007424:	e00514e3          	bnez	a0,8000722c <__printf+0xa4>
    80007428:	1a0c1663          	bnez	s8,800075d4 <__printf+0x44c>
    8000742c:	08813083          	ld	ra,136(sp)
    80007430:	08013403          	ld	s0,128(sp)
    80007434:	07813483          	ld	s1,120(sp)
    80007438:	07013903          	ld	s2,112(sp)
    8000743c:	06813983          	ld	s3,104(sp)
    80007440:	06013a03          	ld	s4,96(sp)
    80007444:	05813a83          	ld	s5,88(sp)
    80007448:	05013b03          	ld	s6,80(sp)
    8000744c:	04813b83          	ld	s7,72(sp)
    80007450:	04013c03          	ld	s8,64(sp)
    80007454:	03813c83          	ld	s9,56(sp)
    80007458:	03013d03          	ld	s10,48(sp)
    8000745c:	02813d83          	ld	s11,40(sp)
    80007460:	0d010113          	addi	sp,sp,208
    80007464:	00008067          	ret
    80007468:	07300713          	li	a4,115
    8000746c:	1ce78a63          	beq	a5,a4,80007640 <__printf+0x4b8>
    80007470:	07800713          	li	a4,120
    80007474:	1ee79e63          	bne	a5,a4,80007670 <__printf+0x4e8>
    80007478:	f7843783          	ld	a5,-136(s0)
    8000747c:	0007a703          	lw	a4,0(a5)
    80007480:	00878793          	addi	a5,a5,8
    80007484:	f6f43c23          	sd	a5,-136(s0)
    80007488:	28074263          	bltz	a4,8000770c <__printf+0x584>
    8000748c:	00002d97          	auipc	s11,0x2
    80007490:	2b4d8d93          	addi	s11,s11,692 # 80009740 <digits>
    80007494:	00f77793          	andi	a5,a4,15
    80007498:	00fd87b3          	add	a5,s11,a5
    8000749c:	0007c683          	lbu	a3,0(a5)
    800074a0:	00f00613          	li	a2,15
    800074a4:	0007079b          	sext.w	a5,a4
    800074a8:	f8d40023          	sb	a3,-128(s0)
    800074ac:	0047559b          	srliw	a1,a4,0x4
    800074b0:	0047569b          	srliw	a3,a4,0x4
    800074b4:	00000c93          	li	s9,0
    800074b8:	0ee65063          	bge	a2,a4,80007598 <__printf+0x410>
    800074bc:	00f6f693          	andi	a3,a3,15
    800074c0:	00dd86b3          	add	a3,s11,a3
    800074c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800074c8:	0087d79b          	srliw	a5,a5,0x8
    800074cc:	00100c93          	li	s9,1
    800074d0:	f8d400a3          	sb	a3,-127(s0)
    800074d4:	0cb67263          	bgeu	a2,a1,80007598 <__printf+0x410>
    800074d8:	00f7f693          	andi	a3,a5,15
    800074dc:	00dd86b3          	add	a3,s11,a3
    800074e0:	0006c583          	lbu	a1,0(a3)
    800074e4:	00f00613          	li	a2,15
    800074e8:	0047d69b          	srliw	a3,a5,0x4
    800074ec:	f8b40123          	sb	a1,-126(s0)
    800074f0:	0047d593          	srli	a1,a5,0x4
    800074f4:	28f67e63          	bgeu	a2,a5,80007790 <__printf+0x608>
    800074f8:	00f6f693          	andi	a3,a3,15
    800074fc:	00dd86b3          	add	a3,s11,a3
    80007500:	0006c503          	lbu	a0,0(a3)
    80007504:	0087d813          	srli	a6,a5,0x8
    80007508:	0087d69b          	srliw	a3,a5,0x8
    8000750c:	f8a401a3          	sb	a0,-125(s0)
    80007510:	28b67663          	bgeu	a2,a1,8000779c <__printf+0x614>
    80007514:	00f6f693          	andi	a3,a3,15
    80007518:	00dd86b3          	add	a3,s11,a3
    8000751c:	0006c583          	lbu	a1,0(a3)
    80007520:	00c7d513          	srli	a0,a5,0xc
    80007524:	00c7d69b          	srliw	a3,a5,0xc
    80007528:	f8b40223          	sb	a1,-124(s0)
    8000752c:	29067a63          	bgeu	a2,a6,800077c0 <__printf+0x638>
    80007530:	00f6f693          	andi	a3,a3,15
    80007534:	00dd86b3          	add	a3,s11,a3
    80007538:	0006c583          	lbu	a1,0(a3)
    8000753c:	0107d813          	srli	a6,a5,0x10
    80007540:	0107d69b          	srliw	a3,a5,0x10
    80007544:	f8b402a3          	sb	a1,-123(s0)
    80007548:	28a67263          	bgeu	a2,a0,800077cc <__printf+0x644>
    8000754c:	00f6f693          	andi	a3,a3,15
    80007550:	00dd86b3          	add	a3,s11,a3
    80007554:	0006c683          	lbu	a3,0(a3)
    80007558:	0147d79b          	srliw	a5,a5,0x14
    8000755c:	f8d40323          	sb	a3,-122(s0)
    80007560:	21067663          	bgeu	a2,a6,8000776c <__printf+0x5e4>
    80007564:	02079793          	slli	a5,a5,0x20
    80007568:	0207d793          	srli	a5,a5,0x20
    8000756c:	00fd8db3          	add	s11,s11,a5
    80007570:	000dc683          	lbu	a3,0(s11)
    80007574:	00800793          	li	a5,8
    80007578:	00700c93          	li	s9,7
    8000757c:	f8d403a3          	sb	a3,-121(s0)
    80007580:	00075c63          	bgez	a4,80007598 <__printf+0x410>
    80007584:	f9040713          	addi	a4,s0,-112
    80007588:	00f70733          	add	a4,a4,a5
    8000758c:	02d00693          	li	a3,45
    80007590:	fed70823          	sb	a3,-16(a4)
    80007594:	00078c93          	mv	s9,a5
    80007598:	f8040793          	addi	a5,s0,-128
    8000759c:	01978cb3          	add	s9,a5,s9
    800075a0:	f7f40d13          	addi	s10,s0,-129
    800075a4:	000cc503          	lbu	a0,0(s9)
    800075a8:	fffc8c93          	addi	s9,s9,-1
    800075ac:	00000097          	auipc	ra,0x0
    800075b0:	9f8080e7          	jalr	-1544(ra) # 80006fa4 <consputc>
    800075b4:	ff9d18e3          	bne	s10,s9,800075a4 <__printf+0x41c>
    800075b8:	0100006f          	j	800075c8 <__printf+0x440>
    800075bc:	00000097          	auipc	ra,0x0
    800075c0:	9e8080e7          	jalr	-1560(ra) # 80006fa4 <consputc>
    800075c4:	000c8493          	mv	s1,s9
    800075c8:	00094503          	lbu	a0,0(s2)
    800075cc:	c60510e3          	bnez	a0,8000722c <__printf+0xa4>
    800075d0:	e40c0ee3          	beqz	s8,8000742c <__printf+0x2a4>
    800075d4:	0000a517          	auipc	a0,0xa
    800075d8:	87c50513          	addi	a0,a0,-1924 # 80010e50 <pr>
    800075dc:	00001097          	auipc	ra,0x1
    800075e0:	94c080e7          	jalr	-1716(ra) # 80007f28 <release>
    800075e4:	e49ff06f          	j	8000742c <__printf+0x2a4>
    800075e8:	f7843783          	ld	a5,-136(s0)
    800075ec:	03000513          	li	a0,48
    800075f0:	01000d13          	li	s10,16
    800075f4:	00878713          	addi	a4,a5,8
    800075f8:	0007bc83          	ld	s9,0(a5)
    800075fc:	f6e43c23          	sd	a4,-136(s0)
    80007600:	00000097          	auipc	ra,0x0
    80007604:	9a4080e7          	jalr	-1628(ra) # 80006fa4 <consputc>
    80007608:	07800513          	li	a0,120
    8000760c:	00000097          	auipc	ra,0x0
    80007610:	998080e7          	jalr	-1640(ra) # 80006fa4 <consputc>
    80007614:	00002d97          	auipc	s11,0x2
    80007618:	12cd8d93          	addi	s11,s11,300 # 80009740 <digits>
    8000761c:	03ccd793          	srli	a5,s9,0x3c
    80007620:	00fd87b3          	add	a5,s11,a5
    80007624:	0007c503          	lbu	a0,0(a5)
    80007628:	fffd0d1b          	addiw	s10,s10,-1
    8000762c:	004c9c93          	slli	s9,s9,0x4
    80007630:	00000097          	auipc	ra,0x0
    80007634:	974080e7          	jalr	-1676(ra) # 80006fa4 <consputc>
    80007638:	fe0d12e3          	bnez	s10,8000761c <__printf+0x494>
    8000763c:	f8dff06f          	j	800075c8 <__printf+0x440>
    80007640:	f7843783          	ld	a5,-136(s0)
    80007644:	0007bc83          	ld	s9,0(a5)
    80007648:	00878793          	addi	a5,a5,8
    8000764c:	f6f43c23          	sd	a5,-136(s0)
    80007650:	000c9a63          	bnez	s9,80007664 <__printf+0x4dc>
    80007654:	1080006f          	j	8000775c <__printf+0x5d4>
    80007658:	001c8c93          	addi	s9,s9,1
    8000765c:	00000097          	auipc	ra,0x0
    80007660:	948080e7          	jalr	-1720(ra) # 80006fa4 <consputc>
    80007664:	000cc503          	lbu	a0,0(s9)
    80007668:	fe0518e3          	bnez	a0,80007658 <__printf+0x4d0>
    8000766c:	f5dff06f          	j	800075c8 <__printf+0x440>
    80007670:	02500513          	li	a0,37
    80007674:	00000097          	auipc	ra,0x0
    80007678:	930080e7          	jalr	-1744(ra) # 80006fa4 <consputc>
    8000767c:	000c8513          	mv	a0,s9
    80007680:	00000097          	auipc	ra,0x0
    80007684:	924080e7          	jalr	-1756(ra) # 80006fa4 <consputc>
    80007688:	f41ff06f          	j	800075c8 <__printf+0x440>
    8000768c:	02500513          	li	a0,37
    80007690:	00000097          	auipc	ra,0x0
    80007694:	914080e7          	jalr	-1772(ra) # 80006fa4 <consputc>
    80007698:	f31ff06f          	j	800075c8 <__printf+0x440>
    8000769c:	00030513          	mv	a0,t1
    800076a0:	00000097          	auipc	ra,0x0
    800076a4:	7bc080e7          	jalr	1980(ra) # 80007e5c <acquire>
    800076a8:	b4dff06f          	j	800071f4 <__printf+0x6c>
    800076ac:	40c0053b          	negw	a0,a2
    800076b0:	00a00713          	li	a4,10
    800076b4:	02e576bb          	remuw	a3,a0,a4
    800076b8:	00002d97          	auipc	s11,0x2
    800076bc:	088d8d93          	addi	s11,s11,136 # 80009740 <digits>
    800076c0:	ff700593          	li	a1,-9
    800076c4:	02069693          	slli	a3,a3,0x20
    800076c8:	0206d693          	srli	a3,a3,0x20
    800076cc:	00dd86b3          	add	a3,s11,a3
    800076d0:	0006c683          	lbu	a3,0(a3)
    800076d4:	02e557bb          	divuw	a5,a0,a4
    800076d8:	f8d40023          	sb	a3,-128(s0)
    800076dc:	10b65e63          	bge	a2,a1,800077f8 <__printf+0x670>
    800076e0:	06300593          	li	a1,99
    800076e4:	02e7f6bb          	remuw	a3,a5,a4
    800076e8:	02069693          	slli	a3,a3,0x20
    800076ec:	0206d693          	srli	a3,a3,0x20
    800076f0:	00dd86b3          	add	a3,s11,a3
    800076f4:	0006c683          	lbu	a3,0(a3)
    800076f8:	02e7d73b          	divuw	a4,a5,a4
    800076fc:	00200793          	li	a5,2
    80007700:	f8d400a3          	sb	a3,-127(s0)
    80007704:	bca5ece3          	bltu	a1,a0,800072dc <__printf+0x154>
    80007708:	ce5ff06f          	j	800073ec <__printf+0x264>
    8000770c:	40e007bb          	negw	a5,a4
    80007710:	00002d97          	auipc	s11,0x2
    80007714:	030d8d93          	addi	s11,s11,48 # 80009740 <digits>
    80007718:	00f7f693          	andi	a3,a5,15
    8000771c:	00dd86b3          	add	a3,s11,a3
    80007720:	0006c583          	lbu	a1,0(a3)
    80007724:	ff100613          	li	a2,-15
    80007728:	0047d69b          	srliw	a3,a5,0x4
    8000772c:	f8b40023          	sb	a1,-128(s0)
    80007730:	0047d59b          	srliw	a1,a5,0x4
    80007734:	0ac75e63          	bge	a4,a2,800077f0 <__printf+0x668>
    80007738:	00f6f693          	andi	a3,a3,15
    8000773c:	00dd86b3          	add	a3,s11,a3
    80007740:	0006c603          	lbu	a2,0(a3)
    80007744:	00f00693          	li	a3,15
    80007748:	0087d79b          	srliw	a5,a5,0x8
    8000774c:	f8c400a3          	sb	a2,-127(s0)
    80007750:	d8b6e4e3          	bltu	a3,a1,800074d8 <__printf+0x350>
    80007754:	00200793          	li	a5,2
    80007758:	e2dff06f          	j	80007584 <__printf+0x3fc>
    8000775c:	00002c97          	auipc	s9,0x2
    80007760:	fc4c8c93          	addi	s9,s9,-60 # 80009720 <CONSOLE_STATUS+0x710>
    80007764:	02800513          	li	a0,40
    80007768:	ef1ff06f          	j	80007658 <__printf+0x4d0>
    8000776c:	00700793          	li	a5,7
    80007770:	00600c93          	li	s9,6
    80007774:	e0dff06f          	j	80007580 <__printf+0x3f8>
    80007778:	00700793          	li	a5,7
    8000777c:	00600c93          	li	s9,6
    80007780:	c69ff06f          	j	800073e8 <__printf+0x260>
    80007784:	00300793          	li	a5,3
    80007788:	00200c93          	li	s9,2
    8000778c:	c5dff06f          	j	800073e8 <__printf+0x260>
    80007790:	00300793          	li	a5,3
    80007794:	00200c93          	li	s9,2
    80007798:	de9ff06f          	j	80007580 <__printf+0x3f8>
    8000779c:	00400793          	li	a5,4
    800077a0:	00300c93          	li	s9,3
    800077a4:	dddff06f          	j	80007580 <__printf+0x3f8>
    800077a8:	00400793          	li	a5,4
    800077ac:	00300c93          	li	s9,3
    800077b0:	c39ff06f          	j	800073e8 <__printf+0x260>
    800077b4:	00500793          	li	a5,5
    800077b8:	00400c93          	li	s9,4
    800077bc:	c2dff06f          	j	800073e8 <__printf+0x260>
    800077c0:	00500793          	li	a5,5
    800077c4:	00400c93          	li	s9,4
    800077c8:	db9ff06f          	j	80007580 <__printf+0x3f8>
    800077cc:	00600793          	li	a5,6
    800077d0:	00500c93          	li	s9,5
    800077d4:	dadff06f          	j	80007580 <__printf+0x3f8>
    800077d8:	00600793          	li	a5,6
    800077dc:	00500c93          	li	s9,5
    800077e0:	c09ff06f          	j	800073e8 <__printf+0x260>
    800077e4:	00800793          	li	a5,8
    800077e8:	00700c93          	li	s9,7
    800077ec:	bfdff06f          	j	800073e8 <__printf+0x260>
    800077f0:	00100793          	li	a5,1
    800077f4:	d91ff06f          	j	80007584 <__printf+0x3fc>
    800077f8:	00100793          	li	a5,1
    800077fc:	bf1ff06f          	j	800073ec <__printf+0x264>
    80007800:	00900793          	li	a5,9
    80007804:	00800c93          	li	s9,8
    80007808:	be1ff06f          	j	800073e8 <__printf+0x260>
    8000780c:	00002517          	auipc	a0,0x2
    80007810:	f1c50513          	addi	a0,a0,-228 # 80009728 <CONSOLE_STATUS+0x718>
    80007814:	00000097          	auipc	ra,0x0
    80007818:	918080e7          	jalr	-1768(ra) # 8000712c <panic>

000000008000781c <printfinit>:
    8000781c:	fe010113          	addi	sp,sp,-32
    80007820:	00813823          	sd	s0,16(sp)
    80007824:	00913423          	sd	s1,8(sp)
    80007828:	00113c23          	sd	ra,24(sp)
    8000782c:	02010413          	addi	s0,sp,32
    80007830:	00009497          	auipc	s1,0x9
    80007834:	62048493          	addi	s1,s1,1568 # 80010e50 <pr>
    80007838:	00048513          	mv	a0,s1
    8000783c:	00002597          	auipc	a1,0x2
    80007840:	efc58593          	addi	a1,a1,-260 # 80009738 <CONSOLE_STATUS+0x728>
    80007844:	00000097          	auipc	ra,0x0
    80007848:	5f4080e7          	jalr	1524(ra) # 80007e38 <initlock>
    8000784c:	01813083          	ld	ra,24(sp)
    80007850:	01013403          	ld	s0,16(sp)
    80007854:	0004ac23          	sw	zero,24(s1)
    80007858:	00813483          	ld	s1,8(sp)
    8000785c:	02010113          	addi	sp,sp,32
    80007860:	00008067          	ret

0000000080007864 <uartinit>:
    80007864:	ff010113          	addi	sp,sp,-16
    80007868:	00813423          	sd	s0,8(sp)
    8000786c:	01010413          	addi	s0,sp,16
    80007870:	100007b7          	lui	a5,0x10000
    80007874:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007878:	f8000713          	li	a4,-128
    8000787c:	00e781a3          	sb	a4,3(a5)
    80007880:	00300713          	li	a4,3
    80007884:	00e78023          	sb	a4,0(a5)
    80007888:	000780a3          	sb	zero,1(a5)
    8000788c:	00e781a3          	sb	a4,3(a5)
    80007890:	00700693          	li	a3,7
    80007894:	00d78123          	sb	a3,2(a5)
    80007898:	00e780a3          	sb	a4,1(a5)
    8000789c:	00813403          	ld	s0,8(sp)
    800078a0:	01010113          	addi	sp,sp,16
    800078a4:	00008067          	ret

00000000800078a8 <uartputc>:
    800078a8:	00004797          	auipc	a5,0x4
    800078ac:	2907a783          	lw	a5,656(a5) # 8000bb38 <panicked>
    800078b0:	00078463          	beqz	a5,800078b8 <uartputc+0x10>
    800078b4:	0000006f          	j	800078b4 <uartputc+0xc>
    800078b8:	fd010113          	addi	sp,sp,-48
    800078bc:	02813023          	sd	s0,32(sp)
    800078c0:	00913c23          	sd	s1,24(sp)
    800078c4:	01213823          	sd	s2,16(sp)
    800078c8:	01313423          	sd	s3,8(sp)
    800078cc:	02113423          	sd	ra,40(sp)
    800078d0:	03010413          	addi	s0,sp,48
    800078d4:	00004917          	auipc	s2,0x4
    800078d8:	26c90913          	addi	s2,s2,620 # 8000bb40 <uart_tx_r>
    800078dc:	00093783          	ld	a5,0(s2)
    800078e0:	00004497          	auipc	s1,0x4
    800078e4:	26848493          	addi	s1,s1,616 # 8000bb48 <uart_tx_w>
    800078e8:	0004b703          	ld	a4,0(s1)
    800078ec:	02078693          	addi	a3,a5,32
    800078f0:	00050993          	mv	s3,a0
    800078f4:	02e69c63          	bne	a3,a4,8000792c <uartputc+0x84>
    800078f8:	00001097          	auipc	ra,0x1
    800078fc:	834080e7          	jalr	-1996(ra) # 8000812c <push_on>
    80007900:	00093783          	ld	a5,0(s2)
    80007904:	0004b703          	ld	a4,0(s1)
    80007908:	02078793          	addi	a5,a5,32
    8000790c:	00e79463          	bne	a5,a4,80007914 <uartputc+0x6c>
    80007910:	0000006f          	j	80007910 <uartputc+0x68>
    80007914:	00001097          	auipc	ra,0x1
    80007918:	88c080e7          	jalr	-1908(ra) # 800081a0 <pop_on>
    8000791c:	00093783          	ld	a5,0(s2)
    80007920:	0004b703          	ld	a4,0(s1)
    80007924:	02078693          	addi	a3,a5,32
    80007928:	fce688e3          	beq	a3,a4,800078f8 <uartputc+0x50>
    8000792c:	01f77693          	andi	a3,a4,31
    80007930:	00009597          	auipc	a1,0x9
    80007934:	54058593          	addi	a1,a1,1344 # 80010e70 <uart_tx_buf>
    80007938:	00d586b3          	add	a3,a1,a3
    8000793c:	00170713          	addi	a4,a4,1
    80007940:	01368023          	sb	s3,0(a3)
    80007944:	00e4b023          	sd	a4,0(s1)
    80007948:	10000637          	lui	a2,0x10000
    8000794c:	02f71063          	bne	a4,a5,8000796c <uartputc+0xc4>
    80007950:	0340006f          	j	80007984 <uartputc+0xdc>
    80007954:	00074703          	lbu	a4,0(a4)
    80007958:	00f93023          	sd	a5,0(s2)
    8000795c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007960:	00093783          	ld	a5,0(s2)
    80007964:	0004b703          	ld	a4,0(s1)
    80007968:	00f70e63          	beq	a4,a5,80007984 <uartputc+0xdc>
    8000796c:	00564683          	lbu	a3,5(a2)
    80007970:	01f7f713          	andi	a4,a5,31
    80007974:	00e58733          	add	a4,a1,a4
    80007978:	0206f693          	andi	a3,a3,32
    8000797c:	00178793          	addi	a5,a5,1
    80007980:	fc069ae3          	bnez	a3,80007954 <uartputc+0xac>
    80007984:	02813083          	ld	ra,40(sp)
    80007988:	02013403          	ld	s0,32(sp)
    8000798c:	01813483          	ld	s1,24(sp)
    80007990:	01013903          	ld	s2,16(sp)
    80007994:	00813983          	ld	s3,8(sp)
    80007998:	03010113          	addi	sp,sp,48
    8000799c:	00008067          	ret

00000000800079a0 <uartputc_sync>:
    800079a0:	ff010113          	addi	sp,sp,-16
    800079a4:	00813423          	sd	s0,8(sp)
    800079a8:	01010413          	addi	s0,sp,16
    800079ac:	00004717          	auipc	a4,0x4
    800079b0:	18c72703          	lw	a4,396(a4) # 8000bb38 <panicked>
    800079b4:	02071663          	bnez	a4,800079e0 <uartputc_sync+0x40>
    800079b8:	00050793          	mv	a5,a0
    800079bc:	100006b7          	lui	a3,0x10000
    800079c0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800079c4:	02077713          	andi	a4,a4,32
    800079c8:	fe070ce3          	beqz	a4,800079c0 <uartputc_sync+0x20>
    800079cc:	0ff7f793          	andi	a5,a5,255
    800079d0:	00f68023          	sb	a5,0(a3)
    800079d4:	00813403          	ld	s0,8(sp)
    800079d8:	01010113          	addi	sp,sp,16
    800079dc:	00008067          	ret
    800079e0:	0000006f          	j	800079e0 <uartputc_sync+0x40>

00000000800079e4 <uartstart>:
    800079e4:	ff010113          	addi	sp,sp,-16
    800079e8:	00813423          	sd	s0,8(sp)
    800079ec:	01010413          	addi	s0,sp,16
    800079f0:	00004617          	auipc	a2,0x4
    800079f4:	15060613          	addi	a2,a2,336 # 8000bb40 <uart_tx_r>
    800079f8:	00004517          	auipc	a0,0x4
    800079fc:	15050513          	addi	a0,a0,336 # 8000bb48 <uart_tx_w>
    80007a00:	00063783          	ld	a5,0(a2)
    80007a04:	00053703          	ld	a4,0(a0)
    80007a08:	04f70263          	beq	a4,a5,80007a4c <uartstart+0x68>
    80007a0c:	100005b7          	lui	a1,0x10000
    80007a10:	00009817          	auipc	a6,0x9
    80007a14:	46080813          	addi	a6,a6,1120 # 80010e70 <uart_tx_buf>
    80007a18:	01c0006f          	j	80007a34 <uartstart+0x50>
    80007a1c:	0006c703          	lbu	a4,0(a3)
    80007a20:	00f63023          	sd	a5,0(a2)
    80007a24:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a28:	00063783          	ld	a5,0(a2)
    80007a2c:	00053703          	ld	a4,0(a0)
    80007a30:	00f70e63          	beq	a4,a5,80007a4c <uartstart+0x68>
    80007a34:	01f7f713          	andi	a4,a5,31
    80007a38:	00e806b3          	add	a3,a6,a4
    80007a3c:	0055c703          	lbu	a4,5(a1)
    80007a40:	00178793          	addi	a5,a5,1
    80007a44:	02077713          	andi	a4,a4,32
    80007a48:	fc071ae3          	bnez	a4,80007a1c <uartstart+0x38>
    80007a4c:	00813403          	ld	s0,8(sp)
    80007a50:	01010113          	addi	sp,sp,16
    80007a54:	00008067          	ret

0000000080007a58 <uartgetc>:
    80007a58:	ff010113          	addi	sp,sp,-16
    80007a5c:	00813423          	sd	s0,8(sp)
    80007a60:	01010413          	addi	s0,sp,16
    80007a64:	10000737          	lui	a4,0x10000
    80007a68:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007a6c:	0017f793          	andi	a5,a5,1
    80007a70:	00078c63          	beqz	a5,80007a88 <uartgetc+0x30>
    80007a74:	00074503          	lbu	a0,0(a4)
    80007a78:	0ff57513          	andi	a0,a0,255
    80007a7c:	00813403          	ld	s0,8(sp)
    80007a80:	01010113          	addi	sp,sp,16
    80007a84:	00008067          	ret
    80007a88:	fff00513          	li	a0,-1
    80007a8c:	ff1ff06f          	j	80007a7c <uartgetc+0x24>

0000000080007a90 <uartintr>:
    80007a90:	100007b7          	lui	a5,0x10000
    80007a94:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007a98:	0017f793          	andi	a5,a5,1
    80007a9c:	0a078463          	beqz	a5,80007b44 <uartintr+0xb4>
    80007aa0:	fe010113          	addi	sp,sp,-32
    80007aa4:	00813823          	sd	s0,16(sp)
    80007aa8:	00913423          	sd	s1,8(sp)
    80007aac:	00113c23          	sd	ra,24(sp)
    80007ab0:	02010413          	addi	s0,sp,32
    80007ab4:	100004b7          	lui	s1,0x10000
    80007ab8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007abc:	0ff57513          	andi	a0,a0,255
    80007ac0:	fffff097          	auipc	ra,0xfffff
    80007ac4:	534080e7          	jalr	1332(ra) # 80006ff4 <consoleintr>
    80007ac8:	0054c783          	lbu	a5,5(s1)
    80007acc:	0017f793          	andi	a5,a5,1
    80007ad0:	fe0794e3          	bnez	a5,80007ab8 <uartintr+0x28>
    80007ad4:	00004617          	auipc	a2,0x4
    80007ad8:	06c60613          	addi	a2,a2,108 # 8000bb40 <uart_tx_r>
    80007adc:	00004517          	auipc	a0,0x4
    80007ae0:	06c50513          	addi	a0,a0,108 # 8000bb48 <uart_tx_w>
    80007ae4:	00063783          	ld	a5,0(a2)
    80007ae8:	00053703          	ld	a4,0(a0)
    80007aec:	04f70263          	beq	a4,a5,80007b30 <uartintr+0xa0>
    80007af0:	100005b7          	lui	a1,0x10000
    80007af4:	00009817          	auipc	a6,0x9
    80007af8:	37c80813          	addi	a6,a6,892 # 80010e70 <uart_tx_buf>
    80007afc:	01c0006f          	j	80007b18 <uartintr+0x88>
    80007b00:	0006c703          	lbu	a4,0(a3)
    80007b04:	00f63023          	sd	a5,0(a2)
    80007b08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007b0c:	00063783          	ld	a5,0(a2)
    80007b10:	00053703          	ld	a4,0(a0)
    80007b14:	00f70e63          	beq	a4,a5,80007b30 <uartintr+0xa0>
    80007b18:	01f7f713          	andi	a4,a5,31
    80007b1c:	00e806b3          	add	a3,a6,a4
    80007b20:	0055c703          	lbu	a4,5(a1)
    80007b24:	00178793          	addi	a5,a5,1
    80007b28:	02077713          	andi	a4,a4,32
    80007b2c:	fc071ae3          	bnez	a4,80007b00 <uartintr+0x70>
    80007b30:	01813083          	ld	ra,24(sp)
    80007b34:	01013403          	ld	s0,16(sp)
    80007b38:	00813483          	ld	s1,8(sp)
    80007b3c:	02010113          	addi	sp,sp,32
    80007b40:	00008067          	ret
    80007b44:	00004617          	auipc	a2,0x4
    80007b48:	ffc60613          	addi	a2,a2,-4 # 8000bb40 <uart_tx_r>
    80007b4c:	00004517          	auipc	a0,0x4
    80007b50:	ffc50513          	addi	a0,a0,-4 # 8000bb48 <uart_tx_w>
    80007b54:	00063783          	ld	a5,0(a2)
    80007b58:	00053703          	ld	a4,0(a0)
    80007b5c:	04f70263          	beq	a4,a5,80007ba0 <uartintr+0x110>
    80007b60:	100005b7          	lui	a1,0x10000
    80007b64:	00009817          	auipc	a6,0x9
    80007b68:	30c80813          	addi	a6,a6,780 # 80010e70 <uart_tx_buf>
    80007b6c:	01c0006f          	j	80007b88 <uartintr+0xf8>
    80007b70:	0006c703          	lbu	a4,0(a3)
    80007b74:	00f63023          	sd	a5,0(a2)
    80007b78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007b7c:	00063783          	ld	a5,0(a2)
    80007b80:	00053703          	ld	a4,0(a0)
    80007b84:	02f70063          	beq	a4,a5,80007ba4 <uartintr+0x114>
    80007b88:	01f7f713          	andi	a4,a5,31
    80007b8c:	00e806b3          	add	a3,a6,a4
    80007b90:	0055c703          	lbu	a4,5(a1)
    80007b94:	00178793          	addi	a5,a5,1
    80007b98:	02077713          	andi	a4,a4,32
    80007b9c:	fc071ae3          	bnez	a4,80007b70 <uartintr+0xe0>
    80007ba0:	00008067          	ret
    80007ba4:	00008067          	ret

0000000080007ba8 <kinit>:
    80007ba8:	fc010113          	addi	sp,sp,-64
    80007bac:	02913423          	sd	s1,40(sp)
    80007bb0:	fffff7b7          	lui	a5,0xfffff
    80007bb4:	0000a497          	auipc	s1,0xa
    80007bb8:	2db48493          	addi	s1,s1,731 # 80011e8f <end+0xfff>
    80007bbc:	02813823          	sd	s0,48(sp)
    80007bc0:	01313c23          	sd	s3,24(sp)
    80007bc4:	00f4f4b3          	and	s1,s1,a5
    80007bc8:	02113c23          	sd	ra,56(sp)
    80007bcc:	03213023          	sd	s2,32(sp)
    80007bd0:	01413823          	sd	s4,16(sp)
    80007bd4:	01513423          	sd	s5,8(sp)
    80007bd8:	04010413          	addi	s0,sp,64
    80007bdc:	000017b7          	lui	a5,0x1
    80007be0:	01100993          	li	s3,17
    80007be4:	00f487b3          	add	a5,s1,a5
    80007be8:	01b99993          	slli	s3,s3,0x1b
    80007bec:	06f9e063          	bltu	s3,a5,80007c4c <kinit+0xa4>
    80007bf0:	00009a97          	auipc	s5,0x9
    80007bf4:	2a0a8a93          	addi	s5,s5,672 # 80010e90 <end>
    80007bf8:	0754ec63          	bltu	s1,s5,80007c70 <kinit+0xc8>
    80007bfc:	0734fa63          	bgeu	s1,s3,80007c70 <kinit+0xc8>
    80007c00:	00088a37          	lui	s4,0x88
    80007c04:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007c08:	00004917          	auipc	s2,0x4
    80007c0c:	f4890913          	addi	s2,s2,-184 # 8000bb50 <kmem>
    80007c10:	00ca1a13          	slli	s4,s4,0xc
    80007c14:	0140006f          	j	80007c28 <kinit+0x80>
    80007c18:	000017b7          	lui	a5,0x1
    80007c1c:	00f484b3          	add	s1,s1,a5
    80007c20:	0554e863          	bltu	s1,s5,80007c70 <kinit+0xc8>
    80007c24:	0534f663          	bgeu	s1,s3,80007c70 <kinit+0xc8>
    80007c28:	00001637          	lui	a2,0x1
    80007c2c:	00100593          	li	a1,1
    80007c30:	00048513          	mv	a0,s1
    80007c34:	00000097          	auipc	ra,0x0
    80007c38:	5e4080e7          	jalr	1508(ra) # 80008218 <__memset>
    80007c3c:	00093783          	ld	a5,0(s2)
    80007c40:	00f4b023          	sd	a5,0(s1)
    80007c44:	00993023          	sd	s1,0(s2)
    80007c48:	fd4498e3          	bne	s1,s4,80007c18 <kinit+0x70>
    80007c4c:	03813083          	ld	ra,56(sp)
    80007c50:	03013403          	ld	s0,48(sp)
    80007c54:	02813483          	ld	s1,40(sp)
    80007c58:	02013903          	ld	s2,32(sp)
    80007c5c:	01813983          	ld	s3,24(sp)
    80007c60:	01013a03          	ld	s4,16(sp)
    80007c64:	00813a83          	ld	s5,8(sp)
    80007c68:	04010113          	addi	sp,sp,64
    80007c6c:	00008067          	ret
    80007c70:	00002517          	auipc	a0,0x2
    80007c74:	ae850513          	addi	a0,a0,-1304 # 80009758 <digits+0x18>
    80007c78:	fffff097          	auipc	ra,0xfffff
    80007c7c:	4b4080e7          	jalr	1204(ra) # 8000712c <panic>

0000000080007c80 <freerange>:
    80007c80:	fc010113          	addi	sp,sp,-64
    80007c84:	000017b7          	lui	a5,0x1
    80007c88:	02913423          	sd	s1,40(sp)
    80007c8c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007c90:	009504b3          	add	s1,a0,s1
    80007c94:	fffff537          	lui	a0,0xfffff
    80007c98:	02813823          	sd	s0,48(sp)
    80007c9c:	02113c23          	sd	ra,56(sp)
    80007ca0:	03213023          	sd	s2,32(sp)
    80007ca4:	01313c23          	sd	s3,24(sp)
    80007ca8:	01413823          	sd	s4,16(sp)
    80007cac:	01513423          	sd	s5,8(sp)
    80007cb0:	01613023          	sd	s6,0(sp)
    80007cb4:	04010413          	addi	s0,sp,64
    80007cb8:	00a4f4b3          	and	s1,s1,a0
    80007cbc:	00f487b3          	add	a5,s1,a5
    80007cc0:	06f5e463          	bltu	a1,a5,80007d28 <freerange+0xa8>
    80007cc4:	00009a97          	auipc	s5,0x9
    80007cc8:	1cca8a93          	addi	s5,s5,460 # 80010e90 <end>
    80007ccc:	0954e263          	bltu	s1,s5,80007d50 <freerange+0xd0>
    80007cd0:	01100993          	li	s3,17
    80007cd4:	01b99993          	slli	s3,s3,0x1b
    80007cd8:	0734fc63          	bgeu	s1,s3,80007d50 <freerange+0xd0>
    80007cdc:	00058a13          	mv	s4,a1
    80007ce0:	00004917          	auipc	s2,0x4
    80007ce4:	e7090913          	addi	s2,s2,-400 # 8000bb50 <kmem>
    80007ce8:	00002b37          	lui	s6,0x2
    80007cec:	0140006f          	j	80007d00 <freerange+0x80>
    80007cf0:	000017b7          	lui	a5,0x1
    80007cf4:	00f484b3          	add	s1,s1,a5
    80007cf8:	0554ec63          	bltu	s1,s5,80007d50 <freerange+0xd0>
    80007cfc:	0534fa63          	bgeu	s1,s3,80007d50 <freerange+0xd0>
    80007d00:	00001637          	lui	a2,0x1
    80007d04:	00100593          	li	a1,1
    80007d08:	00048513          	mv	a0,s1
    80007d0c:	00000097          	auipc	ra,0x0
    80007d10:	50c080e7          	jalr	1292(ra) # 80008218 <__memset>
    80007d14:	00093703          	ld	a4,0(s2)
    80007d18:	016487b3          	add	a5,s1,s6
    80007d1c:	00e4b023          	sd	a4,0(s1)
    80007d20:	00993023          	sd	s1,0(s2)
    80007d24:	fcfa76e3          	bgeu	s4,a5,80007cf0 <freerange+0x70>
    80007d28:	03813083          	ld	ra,56(sp)
    80007d2c:	03013403          	ld	s0,48(sp)
    80007d30:	02813483          	ld	s1,40(sp)
    80007d34:	02013903          	ld	s2,32(sp)
    80007d38:	01813983          	ld	s3,24(sp)
    80007d3c:	01013a03          	ld	s4,16(sp)
    80007d40:	00813a83          	ld	s5,8(sp)
    80007d44:	00013b03          	ld	s6,0(sp)
    80007d48:	04010113          	addi	sp,sp,64
    80007d4c:	00008067          	ret
    80007d50:	00002517          	auipc	a0,0x2
    80007d54:	a0850513          	addi	a0,a0,-1528 # 80009758 <digits+0x18>
    80007d58:	fffff097          	auipc	ra,0xfffff
    80007d5c:	3d4080e7          	jalr	980(ra) # 8000712c <panic>

0000000080007d60 <kfree>:
    80007d60:	fe010113          	addi	sp,sp,-32
    80007d64:	00813823          	sd	s0,16(sp)
    80007d68:	00113c23          	sd	ra,24(sp)
    80007d6c:	00913423          	sd	s1,8(sp)
    80007d70:	02010413          	addi	s0,sp,32
    80007d74:	03451793          	slli	a5,a0,0x34
    80007d78:	04079c63          	bnez	a5,80007dd0 <kfree+0x70>
    80007d7c:	00009797          	auipc	a5,0x9
    80007d80:	11478793          	addi	a5,a5,276 # 80010e90 <end>
    80007d84:	00050493          	mv	s1,a0
    80007d88:	04f56463          	bltu	a0,a5,80007dd0 <kfree+0x70>
    80007d8c:	01100793          	li	a5,17
    80007d90:	01b79793          	slli	a5,a5,0x1b
    80007d94:	02f57e63          	bgeu	a0,a5,80007dd0 <kfree+0x70>
    80007d98:	00001637          	lui	a2,0x1
    80007d9c:	00100593          	li	a1,1
    80007da0:	00000097          	auipc	ra,0x0
    80007da4:	478080e7          	jalr	1144(ra) # 80008218 <__memset>
    80007da8:	00004797          	auipc	a5,0x4
    80007dac:	da878793          	addi	a5,a5,-600 # 8000bb50 <kmem>
    80007db0:	0007b703          	ld	a4,0(a5)
    80007db4:	01813083          	ld	ra,24(sp)
    80007db8:	01013403          	ld	s0,16(sp)
    80007dbc:	00e4b023          	sd	a4,0(s1)
    80007dc0:	0097b023          	sd	s1,0(a5)
    80007dc4:	00813483          	ld	s1,8(sp)
    80007dc8:	02010113          	addi	sp,sp,32
    80007dcc:	00008067          	ret
    80007dd0:	00002517          	auipc	a0,0x2
    80007dd4:	98850513          	addi	a0,a0,-1656 # 80009758 <digits+0x18>
    80007dd8:	fffff097          	auipc	ra,0xfffff
    80007ddc:	354080e7          	jalr	852(ra) # 8000712c <panic>

0000000080007de0 <kalloc>:
    80007de0:	fe010113          	addi	sp,sp,-32
    80007de4:	00813823          	sd	s0,16(sp)
    80007de8:	00913423          	sd	s1,8(sp)
    80007dec:	00113c23          	sd	ra,24(sp)
    80007df0:	02010413          	addi	s0,sp,32
    80007df4:	00004797          	auipc	a5,0x4
    80007df8:	d5c78793          	addi	a5,a5,-676 # 8000bb50 <kmem>
    80007dfc:	0007b483          	ld	s1,0(a5)
    80007e00:	02048063          	beqz	s1,80007e20 <kalloc+0x40>
    80007e04:	0004b703          	ld	a4,0(s1)
    80007e08:	00001637          	lui	a2,0x1
    80007e0c:	00500593          	li	a1,5
    80007e10:	00048513          	mv	a0,s1
    80007e14:	00e7b023          	sd	a4,0(a5)
    80007e18:	00000097          	auipc	ra,0x0
    80007e1c:	400080e7          	jalr	1024(ra) # 80008218 <__memset>
    80007e20:	01813083          	ld	ra,24(sp)
    80007e24:	01013403          	ld	s0,16(sp)
    80007e28:	00048513          	mv	a0,s1
    80007e2c:	00813483          	ld	s1,8(sp)
    80007e30:	02010113          	addi	sp,sp,32
    80007e34:	00008067          	ret

0000000080007e38 <initlock>:
    80007e38:	ff010113          	addi	sp,sp,-16
    80007e3c:	00813423          	sd	s0,8(sp)
    80007e40:	01010413          	addi	s0,sp,16
    80007e44:	00813403          	ld	s0,8(sp)
    80007e48:	00b53423          	sd	a1,8(a0)
    80007e4c:	00052023          	sw	zero,0(a0)
    80007e50:	00053823          	sd	zero,16(a0)
    80007e54:	01010113          	addi	sp,sp,16
    80007e58:	00008067          	ret

0000000080007e5c <acquire>:
    80007e5c:	fe010113          	addi	sp,sp,-32
    80007e60:	00813823          	sd	s0,16(sp)
    80007e64:	00913423          	sd	s1,8(sp)
    80007e68:	00113c23          	sd	ra,24(sp)
    80007e6c:	01213023          	sd	s2,0(sp)
    80007e70:	02010413          	addi	s0,sp,32
    80007e74:	00050493          	mv	s1,a0
    80007e78:	10002973          	csrr	s2,sstatus
    80007e7c:	100027f3          	csrr	a5,sstatus
    80007e80:	ffd7f793          	andi	a5,a5,-3
    80007e84:	10079073          	csrw	sstatus,a5
    80007e88:	fffff097          	auipc	ra,0xfffff
    80007e8c:	8e0080e7          	jalr	-1824(ra) # 80006768 <mycpu>
    80007e90:	07852783          	lw	a5,120(a0)
    80007e94:	06078e63          	beqz	a5,80007f10 <acquire+0xb4>
    80007e98:	fffff097          	auipc	ra,0xfffff
    80007e9c:	8d0080e7          	jalr	-1840(ra) # 80006768 <mycpu>
    80007ea0:	07852783          	lw	a5,120(a0)
    80007ea4:	0004a703          	lw	a4,0(s1)
    80007ea8:	0017879b          	addiw	a5,a5,1
    80007eac:	06f52c23          	sw	a5,120(a0)
    80007eb0:	04071063          	bnez	a4,80007ef0 <acquire+0x94>
    80007eb4:	00100713          	li	a4,1
    80007eb8:	00070793          	mv	a5,a4
    80007ebc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007ec0:	0007879b          	sext.w	a5,a5
    80007ec4:	fe079ae3          	bnez	a5,80007eb8 <acquire+0x5c>
    80007ec8:	0ff0000f          	fence
    80007ecc:	fffff097          	auipc	ra,0xfffff
    80007ed0:	89c080e7          	jalr	-1892(ra) # 80006768 <mycpu>
    80007ed4:	01813083          	ld	ra,24(sp)
    80007ed8:	01013403          	ld	s0,16(sp)
    80007edc:	00a4b823          	sd	a0,16(s1)
    80007ee0:	00013903          	ld	s2,0(sp)
    80007ee4:	00813483          	ld	s1,8(sp)
    80007ee8:	02010113          	addi	sp,sp,32
    80007eec:	00008067          	ret
    80007ef0:	0104b903          	ld	s2,16(s1)
    80007ef4:	fffff097          	auipc	ra,0xfffff
    80007ef8:	874080e7          	jalr	-1932(ra) # 80006768 <mycpu>
    80007efc:	faa91ce3          	bne	s2,a0,80007eb4 <acquire+0x58>
    80007f00:	00002517          	auipc	a0,0x2
    80007f04:	86050513          	addi	a0,a0,-1952 # 80009760 <digits+0x20>
    80007f08:	fffff097          	auipc	ra,0xfffff
    80007f0c:	224080e7          	jalr	548(ra) # 8000712c <panic>
    80007f10:	00195913          	srli	s2,s2,0x1
    80007f14:	fffff097          	auipc	ra,0xfffff
    80007f18:	854080e7          	jalr	-1964(ra) # 80006768 <mycpu>
    80007f1c:	00197913          	andi	s2,s2,1
    80007f20:	07252e23          	sw	s2,124(a0)
    80007f24:	f75ff06f          	j	80007e98 <acquire+0x3c>

0000000080007f28 <release>:
    80007f28:	fe010113          	addi	sp,sp,-32
    80007f2c:	00813823          	sd	s0,16(sp)
    80007f30:	00113c23          	sd	ra,24(sp)
    80007f34:	00913423          	sd	s1,8(sp)
    80007f38:	01213023          	sd	s2,0(sp)
    80007f3c:	02010413          	addi	s0,sp,32
    80007f40:	00052783          	lw	a5,0(a0)
    80007f44:	00079a63          	bnez	a5,80007f58 <release+0x30>
    80007f48:	00002517          	auipc	a0,0x2
    80007f4c:	82050513          	addi	a0,a0,-2016 # 80009768 <digits+0x28>
    80007f50:	fffff097          	auipc	ra,0xfffff
    80007f54:	1dc080e7          	jalr	476(ra) # 8000712c <panic>
    80007f58:	01053903          	ld	s2,16(a0)
    80007f5c:	00050493          	mv	s1,a0
    80007f60:	fffff097          	auipc	ra,0xfffff
    80007f64:	808080e7          	jalr	-2040(ra) # 80006768 <mycpu>
    80007f68:	fea910e3          	bne	s2,a0,80007f48 <release+0x20>
    80007f6c:	0004b823          	sd	zero,16(s1)
    80007f70:	0ff0000f          	fence
    80007f74:	0f50000f          	fence	iorw,ow
    80007f78:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007f7c:	ffffe097          	auipc	ra,0xffffe
    80007f80:	7ec080e7          	jalr	2028(ra) # 80006768 <mycpu>
    80007f84:	100027f3          	csrr	a5,sstatus
    80007f88:	0027f793          	andi	a5,a5,2
    80007f8c:	04079a63          	bnez	a5,80007fe0 <release+0xb8>
    80007f90:	07852783          	lw	a5,120(a0)
    80007f94:	02f05e63          	blez	a5,80007fd0 <release+0xa8>
    80007f98:	fff7871b          	addiw	a4,a5,-1
    80007f9c:	06e52c23          	sw	a4,120(a0)
    80007fa0:	00071c63          	bnez	a4,80007fb8 <release+0x90>
    80007fa4:	07c52783          	lw	a5,124(a0)
    80007fa8:	00078863          	beqz	a5,80007fb8 <release+0x90>
    80007fac:	100027f3          	csrr	a5,sstatus
    80007fb0:	0027e793          	ori	a5,a5,2
    80007fb4:	10079073          	csrw	sstatus,a5
    80007fb8:	01813083          	ld	ra,24(sp)
    80007fbc:	01013403          	ld	s0,16(sp)
    80007fc0:	00813483          	ld	s1,8(sp)
    80007fc4:	00013903          	ld	s2,0(sp)
    80007fc8:	02010113          	addi	sp,sp,32
    80007fcc:	00008067          	ret
    80007fd0:	00001517          	auipc	a0,0x1
    80007fd4:	7b850513          	addi	a0,a0,1976 # 80009788 <digits+0x48>
    80007fd8:	fffff097          	auipc	ra,0xfffff
    80007fdc:	154080e7          	jalr	340(ra) # 8000712c <panic>
    80007fe0:	00001517          	auipc	a0,0x1
    80007fe4:	79050513          	addi	a0,a0,1936 # 80009770 <digits+0x30>
    80007fe8:	fffff097          	auipc	ra,0xfffff
    80007fec:	144080e7          	jalr	324(ra) # 8000712c <panic>

0000000080007ff0 <holding>:
    80007ff0:	00052783          	lw	a5,0(a0)
    80007ff4:	00079663          	bnez	a5,80008000 <holding+0x10>
    80007ff8:	00000513          	li	a0,0
    80007ffc:	00008067          	ret
    80008000:	fe010113          	addi	sp,sp,-32
    80008004:	00813823          	sd	s0,16(sp)
    80008008:	00913423          	sd	s1,8(sp)
    8000800c:	00113c23          	sd	ra,24(sp)
    80008010:	02010413          	addi	s0,sp,32
    80008014:	01053483          	ld	s1,16(a0)
    80008018:	ffffe097          	auipc	ra,0xffffe
    8000801c:	750080e7          	jalr	1872(ra) # 80006768 <mycpu>
    80008020:	01813083          	ld	ra,24(sp)
    80008024:	01013403          	ld	s0,16(sp)
    80008028:	40a48533          	sub	a0,s1,a0
    8000802c:	00153513          	seqz	a0,a0
    80008030:	00813483          	ld	s1,8(sp)
    80008034:	02010113          	addi	sp,sp,32
    80008038:	00008067          	ret

000000008000803c <push_off>:
    8000803c:	fe010113          	addi	sp,sp,-32
    80008040:	00813823          	sd	s0,16(sp)
    80008044:	00113c23          	sd	ra,24(sp)
    80008048:	00913423          	sd	s1,8(sp)
    8000804c:	02010413          	addi	s0,sp,32
    80008050:	100024f3          	csrr	s1,sstatus
    80008054:	100027f3          	csrr	a5,sstatus
    80008058:	ffd7f793          	andi	a5,a5,-3
    8000805c:	10079073          	csrw	sstatus,a5
    80008060:	ffffe097          	auipc	ra,0xffffe
    80008064:	708080e7          	jalr	1800(ra) # 80006768 <mycpu>
    80008068:	07852783          	lw	a5,120(a0)
    8000806c:	02078663          	beqz	a5,80008098 <push_off+0x5c>
    80008070:	ffffe097          	auipc	ra,0xffffe
    80008074:	6f8080e7          	jalr	1784(ra) # 80006768 <mycpu>
    80008078:	07852783          	lw	a5,120(a0)
    8000807c:	01813083          	ld	ra,24(sp)
    80008080:	01013403          	ld	s0,16(sp)
    80008084:	0017879b          	addiw	a5,a5,1
    80008088:	06f52c23          	sw	a5,120(a0)
    8000808c:	00813483          	ld	s1,8(sp)
    80008090:	02010113          	addi	sp,sp,32
    80008094:	00008067          	ret
    80008098:	0014d493          	srli	s1,s1,0x1
    8000809c:	ffffe097          	auipc	ra,0xffffe
    800080a0:	6cc080e7          	jalr	1740(ra) # 80006768 <mycpu>
    800080a4:	0014f493          	andi	s1,s1,1
    800080a8:	06952e23          	sw	s1,124(a0)
    800080ac:	fc5ff06f          	j	80008070 <push_off+0x34>

00000000800080b0 <pop_off>:
    800080b0:	ff010113          	addi	sp,sp,-16
    800080b4:	00813023          	sd	s0,0(sp)
    800080b8:	00113423          	sd	ra,8(sp)
    800080bc:	01010413          	addi	s0,sp,16
    800080c0:	ffffe097          	auipc	ra,0xffffe
    800080c4:	6a8080e7          	jalr	1704(ra) # 80006768 <mycpu>
    800080c8:	100027f3          	csrr	a5,sstatus
    800080cc:	0027f793          	andi	a5,a5,2
    800080d0:	04079663          	bnez	a5,8000811c <pop_off+0x6c>
    800080d4:	07852783          	lw	a5,120(a0)
    800080d8:	02f05a63          	blez	a5,8000810c <pop_off+0x5c>
    800080dc:	fff7871b          	addiw	a4,a5,-1
    800080e0:	06e52c23          	sw	a4,120(a0)
    800080e4:	00071c63          	bnez	a4,800080fc <pop_off+0x4c>
    800080e8:	07c52783          	lw	a5,124(a0)
    800080ec:	00078863          	beqz	a5,800080fc <pop_off+0x4c>
    800080f0:	100027f3          	csrr	a5,sstatus
    800080f4:	0027e793          	ori	a5,a5,2
    800080f8:	10079073          	csrw	sstatus,a5
    800080fc:	00813083          	ld	ra,8(sp)
    80008100:	00013403          	ld	s0,0(sp)
    80008104:	01010113          	addi	sp,sp,16
    80008108:	00008067          	ret
    8000810c:	00001517          	auipc	a0,0x1
    80008110:	67c50513          	addi	a0,a0,1660 # 80009788 <digits+0x48>
    80008114:	fffff097          	auipc	ra,0xfffff
    80008118:	018080e7          	jalr	24(ra) # 8000712c <panic>
    8000811c:	00001517          	auipc	a0,0x1
    80008120:	65450513          	addi	a0,a0,1620 # 80009770 <digits+0x30>
    80008124:	fffff097          	auipc	ra,0xfffff
    80008128:	008080e7          	jalr	8(ra) # 8000712c <panic>

000000008000812c <push_on>:
    8000812c:	fe010113          	addi	sp,sp,-32
    80008130:	00813823          	sd	s0,16(sp)
    80008134:	00113c23          	sd	ra,24(sp)
    80008138:	00913423          	sd	s1,8(sp)
    8000813c:	02010413          	addi	s0,sp,32
    80008140:	100024f3          	csrr	s1,sstatus
    80008144:	100027f3          	csrr	a5,sstatus
    80008148:	0027e793          	ori	a5,a5,2
    8000814c:	10079073          	csrw	sstatus,a5
    80008150:	ffffe097          	auipc	ra,0xffffe
    80008154:	618080e7          	jalr	1560(ra) # 80006768 <mycpu>
    80008158:	07852783          	lw	a5,120(a0)
    8000815c:	02078663          	beqz	a5,80008188 <push_on+0x5c>
    80008160:	ffffe097          	auipc	ra,0xffffe
    80008164:	608080e7          	jalr	1544(ra) # 80006768 <mycpu>
    80008168:	07852783          	lw	a5,120(a0)
    8000816c:	01813083          	ld	ra,24(sp)
    80008170:	01013403          	ld	s0,16(sp)
    80008174:	0017879b          	addiw	a5,a5,1
    80008178:	06f52c23          	sw	a5,120(a0)
    8000817c:	00813483          	ld	s1,8(sp)
    80008180:	02010113          	addi	sp,sp,32
    80008184:	00008067          	ret
    80008188:	0014d493          	srli	s1,s1,0x1
    8000818c:	ffffe097          	auipc	ra,0xffffe
    80008190:	5dc080e7          	jalr	1500(ra) # 80006768 <mycpu>
    80008194:	0014f493          	andi	s1,s1,1
    80008198:	06952e23          	sw	s1,124(a0)
    8000819c:	fc5ff06f          	j	80008160 <push_on+0x34>

00000000800081a0 <pop_on>:
    800081a0:	ff010113          	addi	sp,sp,-16
    800081a4:	00813023          	sd	s0,0(sp)
    800081a8:	00113423          	sd	ra,8(sp)
    800081ac:	01010413          	addi	s0,sp,16
    800081b0:	ffffe097          	auipc	ra,0xffffe
    800081b4:	5b8080e7          	jalr	1464(ra) # 80006768 <mycpu>
    800081b8:	100027f3          	csrr	a5,sstatus
    800081bc:	0027f793          	andi	a5,a5,2
    800081c0:	04078463          	beqz	a5,80008208 <pop_on+0x68>
    800081c4:	07852783          	lw	a5,120(a0)
    800081c8:	02f05863          	blez	a5,800081f8 <pop_on+0x58>
    800081cc:	fff7879b          	addiw	a5,a5,-1
    800081d0:	06f52c23          	sw	a5,120(a0)
    800081d4:	07853783          	ld	a5,120(a0)
    800081d8:	00079863          	bnez	a5,800081e8 <pop_on+0x48>
    800081dc:	100027f3          	csrr	a5,sstatus
    800081e0:	ffd7f793          	andi	a5,a5,-3
    800081e4:	10079073          	csrw	sstatus,a5
    800081e8:	00813083          	ld	ra,8(sp)
    800081ec:	00013403          	ld	s0,0(sp)
    800081f0:	01010113          	addi	sp,sp,16
    800081f4:	00008067          	ret
    800081f8:	00001517          	auipc	a0,0x1
    800081fc:	5b850513          	addi	a0,a0,1464 # 800097b0 <digits+0x70>
    80008200:	fffff097          	auipc	ra,0xfffff
    80008204:	f2c080e7          	jalr	-212(ra) # 8000712c <panic>
    80008208:	00001517          	auipc	a0,0x1
    8000820c:	58850513          	addi	a0,a0,1416 # 80009790 <digits+0x50>
    80008210:	fffff097          	auipc	ra,0xfffff
    80008214:	f1c080e7          	jalr	-228(ra) # 8000712c <panic>

0000000080008218 <__memset>:
    80008218:	ff010113          	addi	sp,sp,-16
    8000821c:	00813423          	sd	s0,8(sp)
    80008220:	01010413          	addi	s0,sp,16
    80008224:	1a060e63          	beqz	a2,800083e0 <__memset+0x1c8>
    80008228:	40a007b3          	neg	a5,a0
    8000822c:	0077f793          	andi	a5,a5,7
    80008230:	00778693          	addi	a3,a5,7
    80008234:	00b00813          	li	a6,11
    80008238:	0ff5f593          	andi	a1,a1,255
    8000823c:	fff6071b          	addiw	a4,a2,-1
    80008240:	1b06e663          	bltu	a3,a6,800083ec <__memset+0x1d4>
    80008244:	1cd76463          	bltu	a4,a3,8000840c <__memset+0x1f4>
    80008248:	1a078e63          	beqz	a5,80008404 <__memset+0x1ec>
    8000824c:	00b50023          	sb	a1,0(a0)
    80008250:	00100713          	li	a4,1
    80008254:	1ae78463          	beq	a5,a4,800083fc <__memset+0x1e4>
    80008258:	00b500a3          	sb	a1,1(a0)
    8000825c:	00200713          	li	a4,2
    80008260:	1ae78a63          	beq	a5,a4,80008414 <__memset+0x1fc>
    80008264:	00b50123          	sb	a1,2(a0)
    80008268:	00300713          	li	a4,3
    8000826c:	18e78463          	beq	a5,a4,800083f4 <__memset+0x1dc>
    80008270:	00b501a3          	sb	a1,3(a0)
    80008274:	00400713          	li	a4,4
    80008278:	1ae78263          	beq	a5,a4,8000841c <__memset+0x204>
    8000827c:	00b50223          	sb	a1,4(a0)
    80008280:	00500713          	li	a4,5
    80008284:	1ae78063          	beq	a5,a4,80008424 <__memset+0x20c>
    80008288:	00b502a3          	sb	a1,5(a0)
    8000828c:	00700713          	li	a4,7
    80008290:	18e79e63          	bne	a5,a4,8000842c <__memset+0x214>
    80008294:	00b50323          	sb	a1,6(a0)
    80008298:	00700e93          	li	t4,7
    8000829c:	00859713          	slli	a4,a1,0x8
    800082a0:	00e5e733          	or	a4,a1,a4
    800082a4:	01059e13          	slli	t3,a1,0x10
    800082a8:	01c76e33          	or	t3,a4,t3
    800082ac:	01859313          	slli	t1,a1,0x18
    800082b0:	006e6333          	or	t1,t3,t1
    800082b4:	02059893          	slli	a7,a1,0x20
    800082b8:	40f60e3b          	subw	t3,a2,a5
    800082bc:	011368b3          	or	a7,t1,a7
    800082c0:	02859813          	slli	a6,a1,0x28
    800082c4:	0108e833          	or	a6,a7,a6
    800082c8:	03059693          	slli	a3,a1,0x30
    800082cc:	003e589b          	srliw	a7,t3,0x3
    800082d0:	00d866b3          	or	a3,a6,a3
    800082d4:	03859713          	slli	a4,a1,0x38
    800082d8:	00389813          	slli	a6,a7,0x3
    800082dc:	00f507b3          	add	a5,a0,a5
    800082e0:	00e6e733          	or	a4,a3,a4
    800082e4:	000e089b          	sext.w	a7,t3
    800082e8:	00f806b3          	add	a3,a6,a5
    800082ec:	00e7b023          	sd	a4,0(a5)
    800082f0:	00878793          	addi	a5,a5,8
    800082f4:	fed79ce3          	bne	a5,a3,800082ec <__memset+0xd4>
    800082f8:	ff8e7793          	andi	a5,t3,-8
    800082fc:	0007871b          	sext.w	a4,a5
    80008300:	01d787bb          	addw	a5,a5,t4
    80008304:	0ce88e63          	beq	a7,a4,800083e0 <__memset+0x1c8>
    80008308:	00f50733          	add	a4,a0,a5
    8000830c:	00b70023          	sb	a1,0(a4)
    80008310:	0017871b          	addiw	a4,a5,1
    80008314:	0cc77663          	bgeu	a4,a2,800083e0 <__memset+0x1c8>
    80008318:	00e50733          	add	a4,a0,a4
    8000831c:	00b70023          	sb	a1,0(a4)
    80008320:	0027871b          	addiw	a4,a5,2
    80008324:	0ac77e63          	bgeu	a4,a2,800083e0 <__memset+0x1c8>
    80008328:	00e50733          	add	a4,a0,a4
    8000832c:	00b70023          	sb	a1,0(a4)
    80008330:	0037871b          	addiw	a4,a5,3
    80008334:	0ac77663          	bgeu	a4,a2,800083e0 <__memset+0x1c8>
    80008338:	00e50733          	add	a4,a0,a4
    8000833c:	00b70023          	sb	a1,0(a4)
    80008340:	0047871b          	addiw	a4,a5,4
    80008344:	08c77e63          	bgeu	a4,a2,800083e0 <__memset+0x1c8>
    80008348:	00e50733          	add	a4,a0,a4
    8000834c:	00b70023          	sb	a1,0(a4)
    80008350:	0057871b          	addiw	a4,a5,5
    80008354:	08c77663          	bgeu	a4,a2,800083e0 <__memset+0x1c8>
    80008358:	00e50733          	add	a4,a0,a4
    8000835c:	00b70023          	sb	a1,0(a4)
    80008360:	0067871b          	addiw	a4,a5,6
    80008364:	06c77e63          	bgeu	a4,a2,800083e0 <__memset+0x1c8>
    80008368:	00e50733          	add	a4,a0,a4
    8000836c:	00b70023          	sb	a1,0(a4)
    80008370:	0077871b          	addiw	a4,a5,7
    80008374:	06c77663          	bgeu	a4,a2,800083e0 <__memset+0x1c8>
    80008378:	00e50733          	add	a4,a0,a4
    8000837c:	00b70023          	sb	a1,0(a4)
    80008380:	0087871b          	addiw	a4,a5,8
    80008384:	04c77e63          	bgeu	a4,a2,800083e0 <__memset+0x1c8>
    80008388:	00e50733          	add	a4,a0,a4
    8000838c:	00b70023          	sb	a1,0(a4)
    80008390:	0097871b          	addiw	a4,a5,9
    80008394:	04c77663          	bgeu	a4,a2,800083e0 <__memset+0x1c8>
    80008398:	00e50733          	add	a4,a0,a4
    8000839c:	00b70023          	sb	a1,0(a4)
    800083a0:	00a7871b          	addiw	a4,a5,10
    800083a4:	02c77e63          	bgeu	a4,a2,800083e0 <__memset+0x1c8>
    800083a8:	00e50733          	add	a4,a0,a4
    800083ac:	00b70023          	sb	a1,0(a4)
    800083b0:	00b7871b          	addiw	a4,a5,11
    800083b4:	02c77663          	bgeu	a4,a2,800083e0 <__memset+0x1c8>
    800083b8:	00e50733          	add	a4,a0,a4
    800083bc:	00b70023          	sb	a1,0(a4)
    800083c0:	00c7871b          	addiw	a4,a5,12
    800083c4:	00c77e63          	bgeu	a4,a2,800083e0 <__memset+0x1c8>
    800083c8:	00e50733          	add	a4,a0,a4
    800083cc:	00b70023          	sb	a1,0(a4)
    800083d0:	00d7879b          	addiw	a5,a5,13
    800083d4:	00c7f663          	bgeu	a5,a2,800083e0 <__memset+0x1c8>
    800083d8:	00f507b3          	add	a5,a0,a5
    800083dc:	00b78023          	sb	a1,0(a5)
    800083e0:	00813403          	ld	s0,8(sp)
    800083e4:	01010113          	addi	sp,sp,16
    800083e8:	00008067          	ret
    800083ec:	00b00693          	li	a3,11
    800083f0:	e55ff06f          	j	80008244 <__memset+0x2c>
    800083f4:	00300e93          	li	t4,3
    800083f8:	ea5ff06f          	j	8000829c <__memset+0x84>
    800083fc:	00100e93          	li	t4,1
    80008400:	e9dff06f          	j	8000829c <__memset+0x84>
    80008404:	00000e93          	li	t4,0
    80008408:	e95ff06f          	j	8000829c <__memset+0x84>
    8000840c:	00000793          	li	a5,0
    80008410:	ef9ff06f          	j	80008308 <__memset+0xf0>
    80008414:	00200e93          	li	t4,2
    80008418:	e85ff06f          	j	8000829c <__memset+0x84>
    8000841c:	00400e93          	li	t4,4
    80008420:	e7dff06f          	j	8000829c <__memset+0x84>
    80008424:	00500e93          	li	t4,5
    80008428:	e75ff06f          	j	8000829c <__memset+0x84>
    8000842c:	00600e93          	li	t4,6
    80008430:	e6dff06f          	j	8000829c <__memset+0x84>

0000000080008434 <__memmove>:
    80008434:	ff010113          	addi	sp,sp,-16
    80008438:	00813423          	sd	s0,8(sp)
    8000843c:	01010413          	addi	s0,sp,16
    80008440:	0e060863          	beqz	a2,80008530 <__memmove+0xfc>
    80008444:	fff6069b          	addiw	a3,a2,-1
    80008448:	0006881b          	sext.w	a6,a3
    8000844c:	0ea5e863          	bltu	a1,a0,8000853c <__memmove+0x108>
    80008450:	00758713          	addi	a4,a1,7
    80008454:	00a5e7b3          	or	a5,a1,a0
    80008458:	40a70733          	sub	a4,a4,a0
    8000845c:	0077f793          	andi	a5,a5,7
    80008460:	00f73713          	sltiu	a4,a4,15
    80008464:	00174713          	xori	a4,a4,1
    80008468:	0017b793          	seqz	a5,a5
    8000846c:	00e7f7b3          	and	a5,a5,a4
    80008470:	10078863          	beqz	a5,80008580 <__memmove+0x14c>
    80008474:	00900793          	li	a5,9
    80008478:	1107f463          	bgeu	a5,a6,80008580 <__memmove+0x14c>
    8000847c:	0036581b          	srliw	a6,a2,0x3
    80008480:	fff8081b          	addiw	a6,a6,-1
    80008484:	02081813          	slli	a6,a6,0x20
    80008488:	01d85893          	srli	a7,a6,0x1d
    8000848c:	00858813          	addi	a6,a1,8
    80008490:	00058793          	mv	a5,a1
    80008494:	00050713          	mv	a4,a0
    80008498:	01088833          	add	a6,a7,a6
    8000849c:	0007b883          	ld	a7,0(a5)
    800084a0:	00878793          	addi	a5,a5,8
    800084a4:	00870713          	addi	a4,a4,8
    800084a8:	ff173c23          	sd	a7,-8(a4)
    800084ac:	ff0798e3          	bne	a5,a6,8000849c <__memmove+0x68>
    800084b0:	ff867713          	andi	a4,a2,-8
    800084b4:	02071793          	slli	a5,a4,0x20
    800084b8:	0207d793          	srli	a5,a5,0x20
    800084bc:	00f585b3          	add	a1,a1,a5
    800084c0:	40e686bb          	subw	a3,a3,a4
    800084c4:	00f507b3          	add	a5,a0,a5
    800084c8:	06e60463          	beq	a2,a4,80008530 <__memmove+0xfc>
    800084cc:	0005c703          	lbu	a4,0(a1)
    800084d0:	00e78023          	sb	a4,0(a5)
    800084d4:	04068e63          	beqz	a3,80008530 <__memmove+0xfc>
    800084d8:	0015c603          	lbu	a2,1(a1)
    800084dc:	00100713          	li	a4,1
    800084e0:	00c780a3          	sb	a2,1(a5)
    800084e4:	04e68663          	beq	a3,a4,80008530 <__memmove+0xfc>
    800084e8:	0025c603          	lbu	a2,2(a1)
    800084ec:	00200713          	li	a4,2
    800084f0:	00c78123          	sb	a2,2(a5)
    800084f4:	02e68e63          	beq	a3,a4,80008530 <__memmove+0xfc>
    800084f8:	0035c603          	lbu	a2,3(a1)
    800084fc:	00300713          	li	a4,3
    80008500:	00c781a3          	sb	a2,3(a5)
    80008504:	02e68663          	beq	a3,a4,80008530 <__memmove+0xfc>
    80008508:	0045c603          	lbu	a2,4(a1)
    8000850c:	00400713          	li	a4,4
    80008510:	00c78223          	sb	a2,4(a5)
    80008514:	00e68e63          	beq	a3,a4,80008530 <__memmove+0xfc>
    80008518:	0055c603          	lbu	a2,5(a1)
    8000851c:	00500713          	li	a4,5
    80008520:	00c782a3          	sb	a2,5(a5)
    80008524:	00e68663          	beq	a3,a4,80008530 <__memmove+0xfc>
    80008528:	0065c703          	lbu	a4,6(a1)
    8000852c:	00e78323          	sb	a4,6(a5)
    80008530:	00813403          	ld	s0,8(sp)
    80008534:	01010113          	addi	sp,sp,16
    80008538:	00008067          	ret
    8000853c:	02061713          	slli	a4,a2,0x20
    80008540:	02075713          	srli	a4,a4,0x20
    80008544:	00e587b3          	add	a5,a1,a4
    80008548:	f0f574e3          	bgeu	a0,a5,80008450 <__memmove+0x1c>
    8000854c:	02069613          	slli	a2,a3,0x20
    80008550:	02065613          	srli	a2,a2,0x20
    80008554:	fff64613          	not	a2,a2
    80008558:	00e50733          	add	a4,a0,a4
    8000855c:	00c78633          	add	a2,a5,a2
    80008560:	fff7c683          	lbu	a3,-1(a5)
    80008564:	fff78793          	addi	a5,a5,-1
    80008568:	fff70713          	addi	a4,a4,-1
    8000856c:	00d70023          	sb	a3,0(a4)
    80008570:	fec798e3          	bne	a5,a2,80008560 <__memmove+0x12c>
    80008574:	00813403          	ld	s0,8(sp)
    80008578:	01010113          	addi	sp,sp,16
    8000857c:	00008067          	ret
    80008580:	02069713          	slli	a4,a3,0x20
    80008584:	02075713          	srli	a4,a4,0x20
    80008588:	00170713          	addi	a4,a4,1
    8000858c:	00e50733          	add	a4,a0,a4
    80008590:	00050793          	mv	a5,a0
    80008594:	0005c683          	lbu	a3,0(a1)
    80008598:	00178793          	addi	a5,a5,1
    8000859c:	00158593          	addi	a1,a1,1
    800085a0:	fed78fa3          	sb	a3,-1(a5)
    800085a4:	fee798e3          	bne	a5,a4,80008594 <__memmove+0x160>
    800085a8:	f89ff06f          	j	80008530 <__memmove+0xfc>
	...
